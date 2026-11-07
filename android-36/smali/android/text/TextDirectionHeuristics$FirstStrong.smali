.class Landroid/text/TextDirectionHeuristics$FirstStrong;
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
    name = "FirstStrong"
.end annotation


# static fields
.field public static final greylist-max-o INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 230
    new-instance v0, Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0}, Landroid/text/TextDirectionHeuristics$FirstStrong;-><init>()V

    sput-object v0, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    return-void
.end method


# virtual methods
.method public greylist-max-o checkRtl(Ljava/lang/CharSequence;II)I
    .registers 10
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 209
    const/4 v0, 0x2

    .line 210
    .local v0, "result":I
    const/4 v1, 0x0

    .line 211
    .local v1, "openIsolateCount":I
    move v2, p2

    .local v2, "i":I
    add-int v3, p2, p3

    .line 212
    .local v3, "end":I
    :goto_5
    if-ge v2, v3, :cond_2e

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2e

    .line 214
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 215
    .local v4, "cp":I
    const/16 v5, 0x2066

    if-gt v5, v4, :cond_19

    const/16 v5, 0x2068

    if-gt v4, v5, :cond_19

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 217
    :cond_19
    const/16 v5, 0x2069

    if-ne v4, v5, :cond_22

    .line 218
    if-lez v1, :cond_28

    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 219
    :cond_22
    if-nez v1, :cond_28

    .line 221
    invoke-static {v4}, Landroid/text/TextDirectionHeuristics;->-$$Nest$smisRtlCodePoint(I)I

    move-result v0

    .line 213
    :cond_28
    :goto_28
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_5

    .line 224
    .end local v2    # "i":I
    .end local v3    # "end":I
    .end local v4    # "cp":I
    :cond_2e
    return v0
.end method
