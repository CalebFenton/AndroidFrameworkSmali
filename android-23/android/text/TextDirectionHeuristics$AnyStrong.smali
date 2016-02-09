.class Landroid/text/TextDirectionHeuristics$AnyStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyStrong"
.end annotation


# static fields
.field public static final INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

.field public static final INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 281
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    #@6
    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    #@8
    .line 282
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    #@e
    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

    #@10
    .line 238
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "lookForRtl"    # Z

    #@0
    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 278
    iput-boolean p1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    #@5
    .line 277
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 8
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 243
    const/4 v2, 0x0

    #@3
    .line 244
    .local v2, "haveUnlookedFor":Z
    const/4 v4, 0x0

    #@4
    .line 245
    .local v4, "openIsolateCount":I
    move v3, p2

    #@5
    .local v3, "i":I
    add-int v1, p2, p3

    #@7
    .local v1, "end":I
    :goto_0
    if-ge v3, v1, :cond_5

    #@9
    .line 246
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@c
    move-result v0

    #@d
    .line 247
    .local v0, "cp":I
    const/16 v7, 0x2066

    #@f
    if-gt v7, v0, :cond_1

    #@11
    const/16 v7, 0x2068

    #@13
    if-gt v0, v7, :cond_1

    #@15
    .line 248
    add-int/lit8 v4, v4, 0x1

    #@17
    .line 245
    :cond_0
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@1a
    move-result v7

    #@1b
    add-int/2addr v3, v7

    #@1c
    goto :goto_0

    #@1d
    .line 249
    :cond_1
    const/16 v7, 0x2069

    #@1f
    if-ne v0, v7, :cond_2

    #@21
    .line 250
    if-lez v4, :cond_0

    #@23
    add-int/lit8 v4, v4, -0x1

    #@25
    goto :goto_1

    #@26
    .line 251
    :cond_2
    if-nez v4, :cond_0

    #@28
    .line 253
    invoke-static {v0}, Landroid/text/TextDirectionHeuristics;->-wrap0(I)I

    #@2b
    move-result v7

    #@2c
    packed-switch v7, :pswitch_data_0

    #@2f
    goto :goto_1

    #@30
    .line 255
    :pswitch_0
    iget-boolean v7, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    #@32
    if-eqz v7, :cond_3

    #@34
    .line 256
    return v6

    #@35
    .line 258
    :cond_3
    const/4 v2, 0x1

    #@36
    .line 259
    goto :goto_1

    #@37
    .line 261
    :pswitch_1
    iget-boolean v7, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    #@39
    if-nez v7, :cond_4

    #@3b
    .line 262
    return v5

    #@3c
    .line 264
    :cond_4
    const/4 v2, 0x1

    #@3d
    .line 265
    goto :goto_1

    #@3e
    .line 271
    .end local v0    # "cp":I
    :cond_5
    if-eqz v2, :cond_7

    #@40
    .line 272
    iget-boolean v7, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    #@42
    if-eqz v7, :cond_6

    #@44
    :goto_2
    return v5

    #@45
    :cond_6
    move v5, v6

    #@46
    goto :goto_2

    #@47
    .line 274
    :cond_7
    const/4 v5, 0x2

    #@48
    return v5

    #@49
    .line 253
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
