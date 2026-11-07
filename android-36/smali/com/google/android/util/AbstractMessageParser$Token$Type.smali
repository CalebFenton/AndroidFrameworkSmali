.class public final enum Lcom/google/android/util/AbstractMessageParser$Token$Type;
.super Ljava/lang/Enum;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/util/AbstractMessageParser$Token$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum greylist ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum greylist FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum greylist FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum greylist GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum greylist HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum greylist LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum greylist MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum greylist PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum greylist SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum greylist YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;


# instance fields
.field private blacklist stringRep:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .registers 10

    .line 657
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    sget-object v3, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    sget-object v4, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    sget-object v5, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    sget-object v6, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    sget-object v7, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    sget-object v8, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    sget-object v9, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    filled-new-array/range {v0 .. v9}, [Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 661
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const/4 v1, 0x0

    const-string v2, "html"

    const-string v3, "HTML"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 663
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const/4 v1, 0x1

    const-string v2, "format"

    const-string v3, "FORMAT"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 665
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const/4 v1, 0x2

    const-string v2, "l"

    const-string v3, "LINK"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 667
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const/4 v1, 0x3

    const-string v2, "e"

    const-string v3, "SMILEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 669
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const/4 v1, 0x4

    const-string v2, "a"

    const-string v3, "ACRONYM"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 671
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const/4 v1, 0x5

    const-string v2, "m"

    const-string v3, "MUSIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 673
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const/4 v1, 0x6

    const-string/jumbo v2, "v"

    const-string v3, "GOOGLE_VIDEO"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 675
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const/4 v1, 0x7

    const-string/jumbo v2, "yt"

    const-string v3, "YOUTUBE_VIDEO"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 677
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const/16 v1, 0x8

    const-string v2, "p"

    const-string v3, "PHOTO"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 679
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const/16 v1, 0x9

    const-string v2, "f"

    const-string v3, "FLICKR"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 657
    invoke-static {}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->$values()[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v0

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->$VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "stringRep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 687
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 688
    iput-object p3, p0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->stringRep:Ljava/lang/String;

    .line 689
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 657
    const-class v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object v0
.end method

.method public static greylist values()[Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .registers 1

    .line 657
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->$VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v0}, [Lcom/google/android/util/AbstractMessageParser$Token$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 693
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->stringRep:Ljava/lang/String;

    return-object v0
.end method
