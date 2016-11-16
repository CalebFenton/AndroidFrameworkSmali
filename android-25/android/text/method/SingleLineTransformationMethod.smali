.class public Landroid/text/method/SingleLineTransformationMethod;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "SingleLineTransformationMethod.java"


# static fields
.field private static ORIGINAL:[C

.field private static REPLACEMENT:[C

.field private static sInstance:Landroid/text/method/SingleLineTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 26
    new-array v0, v1, [C

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Landroid/text/method/SingleLineTransformationMethod;->ORIGINAL:[C

    #@8
    .line 27
    new-array v0, v1, [C

    #@a
    fill-array-data v0, :array_1

    #@d
    sput-object v0, Landroid/text/method/SingleLineTransformationMethod;->REPLACEMENT:[C

    #@f
    .line 24
    return-void

    #@10
    .line 26
    :array_0
    .array-data 2
        0xas
        0xds
    .end array-data

    #@16
    .line 27
    :array_1
    .array-data 2
        0x20s
        -0x101s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/text/method/SingleLineTransformationMethod;
    .locals 1

    #@0
    .prologue
    .line 45
    sget-object v0, Landroid/text/method/SingleLineTransformationMethod;->sInstance:Landroid/text/method/SingleLineTransformationMethod;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 46
    sget-object v0, Landroid/text/method/SingleLineTransformationMethod;->sInstance:Landroid/text/method/SingleLineTransformationMethod;

    #@6
    return-object v0

    #@7
    .line 48
    :cond_0
    new-instance v0, Landroid/text/method/SingleLineTransformationMethod;

    #@9
    invoke-direct {v0}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    #@c
    sput-object v0, Landroid/text/method/SingleLineTransformationMethod;->sInstance:Landroid/text/method/SingleLineTransformationMethod;

    #@e
    .line 49
    sget-object v0, Landroid/text/method/SingleLineTransformationMethod;->sInstance:Landroid/text/method/SingleLineTransformationMethod;

    #@10
    return-object v0
.end method


# virtual methods
.method protected getOriginal()[C
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Landroid/text/method/SingleLineTransformationMethod;->ORIGINAL:[C

    #@2
    return-object v0
.end method

.method protected getReplacement()[C
    .locals 1

    #@0
    .prologue
    .line 41
    sget-object v0, Landroid/text/method/SingleLineTransformationMethod;->REPLACEMENT:[C

    #@2
    return-object v0
.end method
