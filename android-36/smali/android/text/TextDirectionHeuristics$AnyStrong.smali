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
.field public static final greylist-max-o INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

.field public static final greylist-max-o INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;


# instance fields
.field private final greylist-max-o mLookForRtl:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 282
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    .line 283
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

    return-void
.end method

.method private constructor greylist-max-o <init>(Z)V
    .registers 2
    .param p1, "lookForRtl"    # Z

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-boolean p1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    .line 280
    return-void
.end method


# virtual methods
.method public greylist-max-o checkRtl(Ljava/lang/CharSequence;II)I
    .registers 10
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "haveUnlookedFor":Z
    const/4 v1, 0x0

    .line 246
    .local v1, "openIsolateCount":I
    move v2, p2

    .local v2, "i":I
    add-int v3, p2, p3

    .local v3, "end":I
    :goto_5
    if-ge v2, v3, :cond_3f

    .line 247
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 248
    .local v4, "cp":I
    const/16 v5, 0x2066

    if-gt v5, v4, :cond_16

    const/16 v5, 0x2068

    if-gt v4, v5, :cond_16

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 250
    :cond_16
    const/16 v5, 0x2069

    if-ne v4, v5, :cond_1f

    .line 251
    if-lez v1, :cond_39

    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    .line 252
    :cond_1f
    if-nez v1, :cond_39

    .line 254
    invoke-static {v4}, Landroid/text/TextDirectionHeuristics;->-$$Nest$smisRtlCodePoint(I)I

    move-result v5

    packed-switch v5, :pswitch_data_46

    goto :goto_39

    .line 262
    :pswitch_29
    iget-boolean v5, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-nez v5, :cond_2f

    .line 263
    const/4 v5, 0x1

    return v5

    .line 265
    :cond_2f
    const/4 v0, 0x1

    .line 266
    goto :goto_39

    .line 256
    :pswitch_31
    iget-boolean v5, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-eqz v5, :cond_37

    .line 257
    const/4 v5, 0x0

    return v5

    .line 259
    :cond_37
    const/4 v0, 0x1

    .line 260
    nop

    .line 246
    :cond_39
    :goto_39
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_5

    .line 272
    .end local v2    # "i":I
    .end local v3    # "end":I
    .end local v4    # "cp":I
    :cond_3f
    if-eqz v0, :cond_44

    .line 273
    iget-boolean v2, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    return v2

    .line 275
    :cond_44
    const/4 v2, 0x2

    return v2

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method
