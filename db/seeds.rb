#encoding: utf-8

servises = Service.create([{ name: 'УЗИ' },
                           { name: 'ЭКГ' },
                           { name: 'Анализы' },
                           { name: 'Процедуры' }])
ServicePrice.create([{ name: 'УЗИ органов брюшной полости', service_id: servises[0].id },
                     { name: 'УЗИ почек', service_id: servises[0].id },
                     { name: 'УЗИ органов малого таза', service_id: servises[0].id },
                     { name: 'УЗИ органов мошонки', service_id: servises[0].id },
                     { name: 'УЗИ щитовидной железы', service_id: servises[0].id }])
ServicePrice.create([{ name: 'Клинический анализ крови', service_id: servises[2].id },
                     { name: 'Биохимический анализ крови', service_id: servises[2].id },
                     { name: 'Общий анализ мочи', service_id: servises[2].id },
                     { name: 'Обследование на скрытые инфекции', service_id: servises[2].id },
                     { name: 'Анализ спермограммы', service_id: servises[2].id },
                     { name: 'Анализ простатического сока', service_id: servises[2].id }])
ServicePrice.create([{ name: 'Мезотерапия', service_id: servises[3].id },
                     { name: 'Контурная пластика лица', service_id: servises[3].id },
                     { name: 'Инъекции ботокса', service_id: servises[3].id },
                     { name: 'Инстилляции в мочевой пузырь', service_id: servises[3].id }])

specialties = Specialty.create([{ name: 'Аллерголог' },
                                { name: 'Гинеколог' },
                                { name: 'Дерматолог' },
                                { name: 'Кардиолог' },
                                { name: 'Косметолог' },
                                { name: 'Невролог' },
                                { name: 'Окулист' },
                                { name: 'Отоларинголог' },
                                { name: 'Педиатр' },
                                { name: 'Ревматолог' },
                                { name: 'Стоматолог' },
                                { name: 'Терапевт' },
                                { name: 'Уролог' },
                                { name: 'Хирург' },
                                { name: 'Эндокринолог' }])
Doctor.create([{ name: 'Алефиров А.Н.', status: 'врач терапевт, эндокринолог, аллерголог-иммунолог', specialty_id: specialties[0].id},

               { name: 'Бурова Г.И.', status: 'врач гинеколог', specialty_id: specialties[1].id},
               { name: 'Саблина В.Н.', status: 'врач гинеколог-эндокринолог', specialty_id: specialties[1].id},
               { name: 'Шевченко Т.Д.', status: 'врач гинеколог-эндокринолог', phone: '9393267', specialty_id: specialties[1].id},
               { name: 'Владимирова Г.Г.', status: 'врач гинеколог-эндокринолог', phone: '9393267', specialty_id: specialties[1].id},

               { name: 'Котова И.В.', status: 'врач дерматолог, косметолог', phone: '89217415532', specialty_id: specialties[2].id},
               { name: 'Петрунина Н.А.', status: 'врач дерматолог-косметолог', specialty_id: specialties[2].id},
               { name: 'Колосовский Э.Д.', status: 'врач дерматолог', specialty_id: specialties[2].id},
               { name: 'Григорьев Е.Д.', status: 'врач дерматолог', specialty_id: specialties[2].id},
               { name: 'Кожевина О.Л.', status: 'врач дерматолог', specialty_id: specialties[2].id},

               { name: 'Кот И.В.', status: 'врач терапевт, кардиолог, ревматолог', specialty_id: specialties[3].id},

               { name: 'Котова И.В.', status: 'врач дерматолог, косметолог', phone: '89217415532', specialty_id: specialties[4].id},
               { name: 'Петрунина Н.А.', status: 'врач дерматолог-косметолог', phone: '89217415532', specialty_id: specialties[4].id},

               { name: 'Инькова А.И.', status: 'врач невролог', specialty_id: specialties[5].id},
               { name: 'Просандеева Н.Н.', status: 'врач невролог', specialty_id: specialties[5].id},
               { name: 'Федоскова Т.С.', status: 'врач невролог', specialty_id: specialties[5].id},

               { name: 'Гарманова Л.А.', status: 'врач окулист', specialty_id: specialties[6].id},
               { name: 'Ивахов С.С.', status: 'врач окулист', specialty_id: specialties[6].id},

               { name: 'Морозова З.Ф.', status: 'к.м.н. врач отоларинголог', specialty_id: specialties[7].id},
               { name: 'Нестренко Б.Г.', status: 'врач отоларинголог', specialty_id: specialties[7].id},
               { name: 'Чудинова О.Н.', status: 'врач отоларинголог', specialty_id: specialties[7].id},

               { name: 'Ковалева О.Б.', status: 'врач педиатр, гастоэнтеролог, аллерголог-иммунолог', specialty_id: specialties[8].id},
               { name: 'Пашкова Е.В.', status: 'врач педиатр, аллерголог-иммунолог', specialty_id: specialties[8].id},
               { name: 'Светлова З.В.', status: 'врач педиатр гастроэнтеролог, невролог', specialty_id: specialties[8].id},
               { name: 'Фундылер С.Е.', status: 'врач педиатр', specialty_id: specialties[8].id},

               { name: 'Кот И.В.', status: 'врач терапевт, кардиолог, ревматолог', specialty_id: specialties[9].id},

               { name: 'Григоренко С.Ю.', status: 'врач стоматолог', specialty_id: specialties[10].id},
               { name: 'Лагутин Е.М.', status: 'врач стоматолог', phone: '89216565373', specialty_id: specialties[10].id},

               { name: 'Будникова Н.Н.', status: 'терапевт, гастроэнтеролог', phone: '89111463932', specialty_id: specialties[11].id},
               { name: 'Кот И.В.', status: 'терапевт, кардиолог, ревматолог', specialty_id: specialties[11].id},
               { name: 'Алефиров А.Н.', status: 'врач терапевт, эндокринолог, аллерголог-иммунолог', specialty_id: specialties[11].id},
               { name: 'Войцеховская Н.В.', status: 'врач терапевт', specialty_id: specialties[11].id},
               { name: 'Шеремет Т.И.', status: 'врач терапевт', specialty_id: specialties[11].id},

               { name: 'Алексеев Б.Н.', status: 'врач уролог', specialty_id: specialties[12].id},
               { name: 'Гольдман Е.И.', status: 'врач уролог', phone: '89062509328', specialty_id: specialties[12].id},

               { name: 'Яковенко В.В.', status: 'врач хирург-проктолог', specialty_id: specialties[13].id},

               { name: 'Алефиров А.Н.', status: 'врач терапевт, эндокринолог, аллерголог-иммунолог', specialty_id: specialties[14].id}])



