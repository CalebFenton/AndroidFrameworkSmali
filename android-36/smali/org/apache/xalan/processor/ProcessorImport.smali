.class public Lorg/apache/xalan/processor/ProcessorImport;
.super Lorg/apache/xalan/processor/ProcessorInclude;
.source "ProcessorImport.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x727523d6d5b3f375L


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorInclude;-><init>()V

    return-void
.end method


# virtual methods
.method protected greylist getStylesheetInclErr()Ljava/lang/String;
    .registers 1

    .line 53
    const-string p0, "ER_IMPORTING_ITSELF"

    return-object p0
.end method

.method protected greylist getStylesheetType()I
    .registers 1

    .line 0
    const/4 p0, 0x3

    return p0
.end method
