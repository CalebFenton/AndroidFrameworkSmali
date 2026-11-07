.class Landroid/text/util/Linkify$2;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist acceptMatch(Ljava/lang/CharSequence;II)Z
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "digitCount":I
    move v1, p2

    .local v1, "i":I
    :goto_2
    if-ge v1, p3, :cond_18

    .line 174
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    const/4 v2, 0x5

    if-lt v0, v2, :cond_15

    .line 177
    const/4 v2, 0x1

    return v2

    .line 173
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    .end local v1    # "i":I
    :cond_18
    const/4 v1, 0x0

    return v1
.end method
