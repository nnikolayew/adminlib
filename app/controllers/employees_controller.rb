class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def show
    end

    def view
        @employees = Employee.all
    end

    def edit
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)

            respond_to do |format|
                if @employee.save
                    format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
                    format.json { render :show, status: :created, location: @employee }
                else
                    format.html { render :new }
                    format.json { render json: @employee.errors, status: :unprocessable_entity }
                end
            end
    end

    def update
        respond_to do |format|
            if @employee.update(employee_params)
                format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
                format.json { render :show, status: :ok, location: @employee }
            else
                format.html { render :edit }
                format.json { render json: @employee.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @employee.destroy
            respond_to do |format|
                format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
                format.json { head :no_content }
            end
    end

    private
        def set_employee
            @employee = Employee.find(params[:id])
        end

        def employee_params
            params.require(:employee).permit(:surname, :name, :lastname, :birthday)
        end
end
