.class final Landroid/text/util/Linkify$1;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 106
    if-nez p2, :cond_0

    #@4
    .line 107
    return v3

    #@5
    .line 110
    :cond_0
    add-int/lit8 v0, p2, -0x1

    #@7
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@a
    move-result v0

    #@b
    const/16 v1, 0x40

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 111
    return v2

    #@10
    .line 114
    :cond_1
    return v3
.end method
