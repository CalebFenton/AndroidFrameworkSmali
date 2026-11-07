.class public Lorg/apache/xml/utils/URI$MalformedURIException;
.super Ljava/io/IOException;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/utils/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MalformedURIException"
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2

    .line 90
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
