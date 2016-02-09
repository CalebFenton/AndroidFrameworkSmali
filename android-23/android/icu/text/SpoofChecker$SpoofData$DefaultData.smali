.class final Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$SpoofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultData"
.end annotation


# static fields
.field private static INSTANCE:Landroid/icu/text/SpoofChecker$SpoofData;


# direct methods
.method static synthetic -get0()Landroid/icu/text/SpoofChecker$SpoofData;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->INSTANCE:Landroid/icu/text/SpoofChecker$SpoofData;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 2197
    const/4 v1, 0x0

    #@1
    sput-object v1, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->INSTANCE:Landroid/icu/text/SpoofChecker$SpoofData;

    #@3
    .line 2201
    :try_start_0
    new-instance v1, Landroid/icu/text/SpoofChecker$SpoofData;

    #@5
    const-string/jumbo v2, "confusables.cfu"

    #@8
    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    #@b
    move-result-object v2

    #@c
    invoke-direct {v1, v2}, Landroid/icu/text/SpoofChecker$SpoofData;-><init>(Ljava/nio/ByteBuffer;)V

    #@f
    sput-object v1, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->INSTANCE:Landroid/icu/text/SpoofChecker$SpoofData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 2196
    .local v0, "ignored":Ljava/io/IOException;
    :goto_0
    return-void

    #@12
    .line 2202
    .end local v0    # "ignored":Ljava/io/IOException;
    :catch_0
    move-exception v0

    #@13
    .restart local v0    # "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
