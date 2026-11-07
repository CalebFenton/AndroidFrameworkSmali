.class Lcom/android/okhttp/internal/http/HttpDate$1;
.super Ljava/lang/ThreadLocal;
.source "HttpDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/text/DateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 1

    .line 40
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/HttpDate$1;->initialValue()Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist initialValue()Ljava/text/DateFormat;
    .registers 3

    .line 43
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 45
    # getter for: Lcom/android/okhttp/internal/http/HttpDate;->GMT:Ljava/util/TimeZone;
    invoke-static {}, Lcom/android/okhttp/internal/http/HttpDate;->access$000()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p0
.end method
