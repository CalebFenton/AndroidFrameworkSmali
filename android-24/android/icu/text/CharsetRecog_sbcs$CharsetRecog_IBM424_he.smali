.class abstract Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he;
.super Landroid/icu/text/CharsetRecog_sbcs;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_IBM424_he"
.end annotation


# static fields
.field protected static byteMap:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1076
    const/16 v0, 0x100

    #@2
    new-array v0, v0, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he;->byteMap:[B

    #@9
    .line 1074
    return-void

    #@a
    .line 1076
    :array_0
    .array-data 1
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x71t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x0t
        0x40t
        0x40t
        0x40t
        -0x7ft
        -0x7et
        -0x7dt
        -0x7ct
        -0x7bt
        -0x7at
        -0x79t
        -0x78t
        -0x77t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        -0x6ft
        -0x6et
        -0x6dt
        -0x6ct
        -0x6bt
        -0x6at
        -0x69t
        -0x68t
        -0x67t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        -0x60t
        0x40t
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
        -0x5at
        -0x59t
        -0x58t
        -0x57t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        -0x7ft
        -0x7et
        -0x7dt
        -0x7ct
        -0x7bt
        -0x7at
        -0x79t
        -0x78t
        -0x77t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        -0x6ft
        -0x6et
        -0x6dt
        -0x6ct
        -0x6bt
        -0x6at
        -0x69t
        -0x68t
        -0x67t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
        -0x5at
        -0x59t
        -0x58t
        -0x57t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1074
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1098
    const-string/jumbo v0, "he"

    #@3
    return-object v0
.end method
