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
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/util/AbstractMessageParser$Token$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;


# instance fields
.field private stringRep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 657
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@7
    const-string/jumbo v1, "HTML"

    #@a
    const-string/jumbo v2, "html"

    #@d
    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@10
    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@12
    .line 658
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@14
    const-string/jumbo v1, "FORMAT"

    #@17
    const-string/jumbo v2, "format"

    #@1a
    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1d
    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@1f
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@21
    const-string/jumbo v1, "LINK"

    #@24
    .line 659
    const-string/jumbo v2, "l"

    #@27
    .line 658
    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@2a
    .line 659
    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@2c
    .line 660
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@2e
    const-string/jumbo v1, "SMILEY"

    #@31
    const-string/jumbo v2, "e"

    #@34
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@37
    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@39
    .line 661
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@3b
    const-string/jumbo v1, "ACRONYM"

    #@3e
    const-string/jumbo v2, "a"

    #@41
    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@44
    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@46
    .line 662
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@48
    const-string/jumbo v1, "MUSIC"

    #@4b
    const-string/jumbo v2, "m"

    #@4e
    const/4 v3, 0x5

    #@4f
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@52
    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@54
    .line 663
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@56
    const-string/jumbo v1, "GOOGLE_VIDEO"

    #@59
    const-string/jumbo v2, "v"

    #@5c
    const/4 v3, 0x6

    #@5d
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@60
    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@62
    .line 664
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@64
    const-string/jumbo v1, "YOUTUBE_VIDEO"

    #@67
    const-string/jumbo v2, "yt"

    #@6a
    const/4 v3, 0x7

    #@6b
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@6e
    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@70
    .line 665
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@72
    const-string/jumbo v1, "PHOTO"

    #@75
    const-string/jumbo v2, "p"

    #@78
    const/16 v3, 0x8

    #@7a
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@7d
    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@7f
    .line 666
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@81
    const-string/jumbo v1, "FLICKR"

    #@84
    const-string/jumbo v2, "f"

    #@87
    const/16 v3, 0x9

    #@89
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@8c
    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@8e
    .line 655
    const/16 v0, 0xa

    #@90
    new-array v0, v0, [Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@92
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@94
    aput-object v1, v0, v4

    #@96
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@98
    aput-object v1, v0, v5

    #@9a
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@9c
    aput-object v1, v0, v6

    #@9e
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@a0
    aput-object v1, v0, v7

    #@a2
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@a4
    aput-object v1, v0, v8

    #@a6
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@a8
    const/4 v2, 0x5

    #@a9
    aput-object v1, v0, v2

    #@ab
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@ad
    const/4 v2, 0x6

    #@ae
    aput-object v1, v0, v2

    #@b0
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@b2
    const/4 v2, 0x7

    #@b3
    aput-object v1, v0, v2

    #@b5
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@b7
    const/16 v2, 0x8

    #@b9
    aput-object v1, v0, v2

    #@bb
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@bd
    const/16 v2, 0x9

    #@bf
    aput-object v1, v0, v2

    #@c1
    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->$VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@c3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "stringRep"    # Ljava/lang/String;

    #@0
    .prologue
    .line 673
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 674
    iput-object p3, p0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->stringRep:Ljava/lang/String;

    #@5
    .line 673
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 655
    const-class v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .locals 1

    #@0
    .prologue
    .line 655
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->$VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@2
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->stringRep:Ljava/lang/String;

    #@2
    return-object v0
.end method
