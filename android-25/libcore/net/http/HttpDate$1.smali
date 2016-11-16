.class final Llibcore/net/http/HttpDate$1;
.super Ljava/lang/ThreadLocal;
.source "HttpDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/text/DateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-virtual {p0}, Llibcore/net/http/HttpDate$1;->initialValue()Ljava/text/DateFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected initialValue()Ljava/text/DateFormat;
    .locals 3

    #@0
    .prologue
    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@2
    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    #@5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@a
    .line 39
    .local v0, "rfc1123":Ljava/text/DateFormat;
    const-string/jumbo v1, "UTC"

    #@d
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    #@14
    .line 40
    return-object v0
.end method
