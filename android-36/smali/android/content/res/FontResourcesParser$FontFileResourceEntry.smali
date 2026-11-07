.class public final Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/FontResourcesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFileResourceEntry"
.end annotation


# static fields
.field public static final blacklist ITALIC:I = 0x1

.field public static final blacklist RESOLVE_BY_FONT_TABLE:I = -0x1

.field public static final blacklist UPRIGHT:I


# instance fields
.field private final greylist-max-o mFileName:Ljava/lang/String;

.field private greylist-max-o mItalic:I

.field private greylist-max-o mResourceId:I

.field private greylist-max-o mTtcIndex:I

.field private greylist-max-o mVariationSettings:Ljava/lang/String;

.field private greylist-max-o mWeight:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "italic"    # I
    .param p4, "variationSettings"    # Ljava/lang/String;
    .param p5, "ttcIndex"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    .line 102
    iput p2, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mWeight:I

    .line 103
    iput p3, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mItalic:I

    .line 104
    iput-object p4, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    .line 105
    iput p5, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mTtcIndex:I

    .line 106
    return-void
.end method


# virtual methods
.method public greylist-max-o getFileName()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getItalic()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mItalic:I

    return v0
.end method

.method public greylist-max-o getTtcIndex()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mTtcIndex:I

    return v0
.end method

.method public greylist-max-o getVariationSettings()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getWeight()I
    .registers 2

    .line 113
    iget v0, p0, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->mWeight:I

    return v0
.end method
