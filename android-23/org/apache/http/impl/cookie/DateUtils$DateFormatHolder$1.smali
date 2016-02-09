.class final Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder$1;
.super Ljava/lang/ThreadLocal;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/ref/SoftReference",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/text/SimpleDateFormat;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/DateUtils$DateFormatHolder$1;->initialValue()Ljava/lang/ref/SoftReference;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected initialValue()Ljava/lang/ref/SoftReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 227
    new-instance v0, Ljava/lang/ref/SoftReference;

    #@2
    .line 228
    new-instance v1, Ljava/util/HashMap;

    #@4
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@7
    .line 227
    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@a
    return-object v0
.end method
