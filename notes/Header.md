# Header Specification

## Limitations

- Line length `998` characters for `IMPLEMENTATION` reason.
- Line length `78` characters for `DISPLAY` reason (in monospace/terminal environment, this will help as no messages will be truncated without text wrapping).
- There's a Blank Line (CR-LF pair / `\r\n`) for headers (as that is general rule for messages, [1]()).

## Members

- `name`: `string`. Name of the header.
- `value`: `string`. Value of the header.

## Methods

### Getters/Setters

- `get_name`, `set_name`
- `get_value`, `set_value`


## Formatting

```
key: value
```

## Examples

```mailbox
From: Plato <plato@schoolofathens.com>
To: Aristotle <aristotle@schoolofathens.com>
Subject: Talk about nature of the forms
```

## References

1. [RFC2822](https://www.rfc-editor.org/rfc/rfc2822), [Section 3.4](https://www.rfc-editor.org/rfc/rfc2822#section-3.4).
2. [JavaMail API](https://javaee.github.io/javamail/docs/api/), [Header](https://github.com/javaee/javamail/blob/master/mail/src/main/java/javax/mail/Header.java).
3. [MailCore2 API (C++)](https://github.com/MailCore/mailcore2/) MessageHeader:  ([Header](https://github.com/MailCore/mailcore2/blob/master/src/core/abstract/MCMessageHeader.h), [Source](https://github.com/MailCore/mailcore2/blob/master/src/core/abstract/MCMessageHeader.cpp)).
4. [GMime (Vala) API](https://github.com/jstedfast/gmime).
