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
.field private static greylist-max-o EXCEPTION:Ljava/io/IOException;

.field private static greylist-max-o INSTANCE:Landroid/icu/text/SpoofChecker$SpoofData;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEXCEPTION()Ljava/io/IOException;
    .registers 1

    sget-object v0, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->EXCEPTION:Ljava/io/IOException;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/icu/text/SpoofChecker$SpoofData;
    .registers 1

    sget-object v0, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->INSTANCE:Landroid/icu/text/SpoofChecker$SpoofData;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1857
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->INSTANCE:Landroid/icu/text/SpoofChecker$SpoofData;

    .line 1858
    sput-object v0, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->EXCEPTION:Ljava/io/IOException;

    .line 1864
    :try_start_5
    new-instance v1, Landroid/icu/text/SpoofChecker$SpoofData;

    const-string v2, "confusables.cfu"

    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/icu/text/SpoofChecker$SpoofData;-><init>(Ljava/nio/ByteBuffer;Landroid/icu/text/SpoofChecker-IA;)V

    sput-object v1, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->INSTANCE:Landroid/icu/text/SpoofChecker$SpoofData;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_13

    .line 1867
    goto :goto_16

    .line 1865
    :catch_13
    move-exception v0

    .line 1866
    .local v0, "e":Ljava/io/IOException;
    sput-object v0, Landroid/icu/text/SpoofChecker$SpoofData$DefaultData;->EXCEPTION:Ljava/io/IOException;

    .line 1868
    .end local v0    # "e":Ljava/io/IOException;
    :goto_16
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
