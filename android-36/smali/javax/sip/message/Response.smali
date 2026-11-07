.class public interface abstract Ljavax/sip/message/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljavax/sip/message/Message;


# static fields
.field public static final blacklist ACCEPTED:I = 0xca

.field public static final blacklist ADDRESS_INCOMPLETE:I = 0x1e4

.field public static final blacklist ALTERNATIVE_SERVICE:I = 0x17c

.field public static final blacklist AMBIGUOUS:I = 0x1e5

.field public static final blacklist BAD_EVENT:I = 0x1e9

.field public static final blacklist BAD_EXTENSION:I = 0x1a4

.field public static final blacklist BAD_GATEWAY:I = 0x1f6

.field public static final blacklist BAD_REQUEST:I = 0x190

.field public static final blacklist BUSY_EVERYWHERE:I = 0x258

.field public static final blacklist BUSY_HERE:I = 0x1e6

.field public static final blacklist CALL_IS_BEING_FORWARDED:I = 0xb5

.field public static final blacklist CALL_OR_TRANSACTION_DOES_NOT_EXIST:I = 0x1e1

.field public static final blacklist CONDITIONAL_REQUEST_FAILED:I = 0x19c

.field public static final blacklist DECLINE:I = 0x25b

.field public static final blacklist DOES_NOT_EXIST_ANYWHERE:I = 0x25c

.field public static final blacklist EXTENSION_REQUIRED:I = 0x1a5

.field public static final blacklist FORBIDDEN:I = 0x193

.field public static final blacklist GONE:I = 0x19a

.field public static final blacklist INTERVAL_TOO_BRIEF:I = 0x1a7

.field public static final blacklist LOOP_DETECTED:I = 0x1e2

.field public static final blacklist MESSAGE_TOO_LARGE:I = 0x201

.field public static final blacklist METHOD_NOT_ALLOWED:I = 0x195

.field public static final blacklist MOVED_PERMANENTLY:I = 0x12d

.field public static final blacklist MOVED_TEMPORARILY:I = 0x12e

.field public static final blacklist MULTIPLE_CHOICES:I = 0x12c

.field public static final blacklist NOT_ACCEPTABLE:I = 0x196

.field public static final blacklist NOT_ACCEPTABLE_HERE:I = 0x1e8

.field public static final blacklist NOT_FOUND:I = 0x194

.field public static final blacklist NOT_IMPLEMENTED:I = 0x1f5

.field public static final blacklist OK:I = 0xc8

.field public static final blacklist PAYMENT_REQUIRED:I = 0x192

.field public static final blacklist PROXY_AUTHENTICATION_REQUIRED:I = 0x197

.field public static final blacklist QUEUED:I = 0xb6

.field public static final blacklist REQUEST_ENTITY_TOO_LARGE:I = 0x19d

.field public static final blacklist REQUEST_PENDING:I = 0x1eb

.field public static final blacklist REQUEST_TERMINATED:I = 0x1e7

.field public static final blacklist REQUEST_TIMEOUT:I = 0x198

.field public static final blacklist REQUEST_URI_TOO_LONG:I = 0x19e

.field public static final blacklist RINGING:I = 0xb4

.field public static final blacklist SERVER_INTERNAL_ERROR:I = 0x1f4

.field public static final blacklist SERVER_TIMEOUT:I = 0x1f8

.field public static final blacklist SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final blacklist SESSION_NOT_ACCEPTABLE:I = 0x25e

.field public static final blacklist SESSION_PROGRESS:I = 0xb7

.field public static final blacklist TEMPORARILY_UNAVAILABLE:I = 0x1e0

.field public static final blacklist TOO_MANY_HOPS:I = 0x1e3

.field public static final blacklist TRYING:I = 0x64

.field public static final blacklist UNAUTHORIZED:I = 0x191

.field public static final blacklist UNDECIPHERABLE:I = 0x1ed

.field public static final blacklist UNSUPPORTED_MEDIA_TYPE:I = 0x19f

.field public static final blacklist UNSUPPORTED_URI_SCHEME:I = 0x1a0

.field public static final blacklist USE_PROXY:I = 0x131

.field public static final blacklist VERSION_NOT_SUPPORTED:I = 0x1f9


# virtual methods
.method public abstract blacklist getReasonPhrase()Ljava/lang/String;
.end method

.method public abstract blacklist getStatusCode()I
.end method

.method public abstract blacklist setReasonPhrase(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setStatusCode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
