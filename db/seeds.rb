#данные для библиотек
    Library.delete_all
    Library.create!(
        number: '123a',
        name: 'Городская библиотека №2',
        adress: 'Москва, улица Петровка, 38')

    Library.create!(
        number: '123a',
        name: 'Городская библиотека №3',
        adress: 'Москва, улица Петровка, 38')

    Library.create!(
        number: '123a',
        name: 'Городская библиотека №4',
        adress: 'Москва, улица Петровка, 38')

    Library.create!(
        number: '123a',
        name: 'Городская библиотека №5',
        adress: 'Москва, улица Петровка, 38')


#данные для сотрудников
    Employee.delete_all
    Employee.create!(
        surname: 'Иванов',
        name: 'Иван',
        lastname: 'Иванович',
        birthday: '01.01.1965',
        startwork: '01.01.2010',
        position: 'Заведующий библиотекой',
        education: 'Полное высшее')

    Employee.create!(
        surname: 'Иванов',
        name: 'Иван',
        lastname: 'Иванович',
        birthday: '01.01.1965',
        startwork: '01.01.2010',
        position: 'Заведующий библиотекой',
        education: 'Полное высшее')

    Employee.create!(
        surname: 'Иванов',
        name: 'Иван',
        lastname: 'Иванович',
        birthday: '01.01.1965',
        startwork: '01.01.2010',
        position: 'Заведующий библиотекой',
        education: 'Полное высшее')

    Employee.create!(
        surname: 'Иванов',
        name: 'Иван',
        lastname: 'Иванович',
        birthday: '01.01.1965',
        startwork: '01.01.2010',
        position: 'Заведующий библиотекой',
        education: 'Полное высшее')


#данные для абонентов
    Abonent.delete_all
    Abonent. create!(
        ticket: 1,
        surname: 'Петров',
        name: 'Петр',
        lastname: 'Петрович',
        adress: 'Москва, Тверская, 23',
        phone: 21545)

    Abonent. create!(
        ticket: 1,
        surname: 'Петров',
        name: 'Петр',
        lastname: 'Петрович',
        adress: 'Москва, Тверская, 23',
        phone: 21545)

    Abonent. create!(
        ticket: 1,
        surname: 'Петров',
        name: 'Петр',
        lastname: 'Петрович',
        adress: 'Москва, Тверская, 23',
        phone: 21545)

    Abonent. create!(
        ticket: 1,
        surname: 'Петров',
        name: 'Петр',
        lastname: 'Петрович',
        adress: 'Москва, Тверская, 23',
        phone: 21545)


#данные для выдач
    Delivery.delete_all
    Delivery.create!(
        dateissue: '01.05.2016',
        datereturn: '05.06.2016')

    Delivery.create!(
        dateissue: '01.05.2016',
        datereturn: '05.06.2016')

    Delivery.create!(
        dateissue: '01.05.2016',
        datereturn: '05.06.2016')

    Delivery.create!(
        dateissue: '01.05.2016',
        datereturn: '05.06.2016')


#данные для книг
    Book.delete_all
    Book.create!(
        name: 'RoR гибкая разработка',
        autor: 'Сэм Руби',
        shifr: '01а25м',
        publishe: 'Питер',
        year: 2014,
        price: 1200,
        date: '01.02.2016')

    Book.create!(
        name: 'RoR гибкая разработка',
        autor: 'Сэм Руби',
        shifr: '01а25м',
        publishe: 'Питер',
        year: 2014,
        price: 1200,
        date: '01.02.2016')

    Book.create!(
        name: 'RoR гибкая разработка',
        autor: 'Сэм Руби',
        shifr: '01а25м',
        publishe: 'Питер',
        year: 2014,
        price: 1200,
        date: '01.02.2016')

    Book.create!(
        name: 'RoR гибкая разработка',
        autor: 'Сэм Руби',
        shifr: '01а25м',
        publishe: 'Питер',
        year: 2014,
        price: 1200,
        date: '01.02.2016')