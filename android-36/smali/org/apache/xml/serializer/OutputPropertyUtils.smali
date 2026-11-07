.class public final Lorg/apache/xml/serializer/OutputPropertyUtils;
.super Ljava/lang/Object;
.source "OutputPropertyUtils.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z
    .registers 2

    .line 52
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 54
    const-string p1, "yes"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x1

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist getIntProperty(Ljava/lang/String;Ljava/util/Properties;)I
    .registers 2

    .line 75
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 80
    :cond_8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
