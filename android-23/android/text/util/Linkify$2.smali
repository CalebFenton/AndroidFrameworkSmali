.class final Landroid/text/util/Linkify$2;
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
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 124
    const/4 v0, 0x0

    #@1
    .line 126
    .local v0, "digitCount":I
    move v1, p2

    #@2
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    #@4
    .line 127
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@7
    move-result v2

    #@8
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 128
    add-int/lit8 v0, v0, 0x1

    #@10
    .line 129
    const/4 v2, 0x5

    #@11
    if-lt v0, v2, :cond_0

    #@13
    .line 130
    const/4 v2, 0x1

    #@14
    return v2

    #@15
    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 134
    :cond_1
    const/4 v2, 0x0

    #@19
    return v2
.end method
