.class public final Landroid/graphics/Rect;
.super Ljava/lang/Object;
.source "Rect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Rect$UnflattenHelper;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist bottom:I

.field public whitelist left:I

.field public whitelist right:I

.field public whitelist top:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 769
    new-instance v0, Landroid/graphics/Rect$1;

    invoke-direct {v0}, Landroid/graphics/Rect$1;-><init>()V

    sput-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 87
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 88
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 89
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    .line 90
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Insets;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/Insets;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    if-nez p1, :cond_f

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_1f

    .line 117
    :cond_f
    iget v0, p1, Landroid/graphics/Insets;->left:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 118
    iget v0, p1, Landroid/graphics/Insets;->top:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 119
    iget v0, p1, Landroid/graphics/Insets;->right:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 120
    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 122
    :goto_1f
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    if-nez p1, :cond_f

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_1f

    .line 103
    :cond_f
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 104
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 105
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 106
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 108
    :goto_1f
    return-void
.end method

.method public static greylist-max-o copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "r"    # Landroid/graphics/Rect;

    .line 131
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_9
    return-object v0
.end method

.method public static whitelist intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4
    .param p0, "a"    # Landroid/graphics/Rect;
    .param p1, "b"    # Landroid/graphics/Rect;

    .line 634
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1a

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1a

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1a

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static whitelist unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 212
    return-object v1

    .line 215
    :cond_8
    invoke-static {p0}, Landroid/graphics/Rect$UnflattenHelper;->getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 216
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_13

    .line 217
    return-object v1

    .line 219
    :cond_13
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 220
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 221
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 222
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 219
    return-object v1
.end method


# virtual methods
.method public final whitelist centerX()I
    .registers 3

    .line 324
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final whitelist centerY()I
    .registers 3

    .line 333
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist contains(II)Z
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 483
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lt p1, v0, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public whitelist contains(IIII)Z
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 501
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-lt v0, p3, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, p4, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public whitelist contains(Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 517
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 753
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 245
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 246
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    iget v4, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 247
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 248
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 249
    const-wide v2, 0x10500000004L

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 250
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 251
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 136
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 137
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 139
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/Rect;

    .line 140
    .local v2, "r":Landroid/graphics/Rect;
    iget v3, p0, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 137
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_30
    :goto_30
    return v1
.end method

.method public final whitelist exactCenterX()F
    .registers 3

    .line 340
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final whitelist exactCenterY()F
    .registers 3

    .line 347
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public whitelist flattenToString()Ljava/lang/String;
    .registers 4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 145
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 146
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    .line 147
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 148
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 149
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public final whitelist height()I
    .registers 3

    .line 315
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist inset(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 425
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 426
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 427
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 428
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 429
    return-void
.end method

.method public whitelist inset(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 465
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 466
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 467
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p3

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 468
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p4

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 469
    return-void
.end method

.method public whitelist inset(Landroid/graphics/Insets;)V
    .registers 4
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 450
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Insets;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 451
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Insets;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 452
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 453
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 454
    return-void
.end method

.method public greylist-max-o inset(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 438
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 439
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 440
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 441
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 442
    return-void
.end method

.method public whitelist intersect(IIII)Z
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 542
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p3, :cond_2a

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_2a

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ge v0, p4, :cond_2a

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v0, :cond_2a

    .line 543
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p1, :cond_16

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 544
    :cond_16
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ge v0, p2, :cond_1c

    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 545
    :cond_1c
    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-le v0, p3, :cond_22

    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 546
    :cond_22
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-le v0, p4, :cond_28

    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    .line 547
    :cond_28
    const/4 v0, 0x1

    return v0

    .line 549
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist intersect(Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 565
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o intersectUnchecked(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "other"    # Landroid/graphics/Rect;

    .line 575
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 576
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 577
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 578
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 579
    return-void
.end method

.method public whitelist intersects(IIII)Z
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 620
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p3, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ge v0, p4, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public final whitelist isEmpty()Z
    .registers 3

    .line 291
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_f

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist isValid()Z
    .registers 3

    .line 299
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_e

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist offset(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 395
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 396
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 397
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 398
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 399
    return-void
.end method

.method public whitelist offsetTo(II)V
    .registers 5
    .param p1, "newLeft"    # I
    .param p2, "newTop"    # I

    .line 409
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 410
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 411
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 412
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 413
    return-void
.end method

.method public greylist printShortString(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 231
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 232
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 233
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 234
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 799
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 800
    return-void
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 263
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 265
    .local v0, "token":J
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_44

    .line 266
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_4e

    goto :goto_43

    .line 277
    :pswitch_13
    const-wide v2, 0x10500000004L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_43

    .line 274
    :pswitch_1f
    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 275
    goto :goto_43

    .line 271
    :pswitch_2b
    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 272
    goto :goto_43

    .line 268
    :pswitch_37
    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/graphics/Rect;->left:I
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_49

    .line 269
    nop

    .line 278
    :goto_43
    goto :goto_4

    .line 283
    :cond_44
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 284
    nop

    .line 285
    return-void

    .line 283
    :catchall_49
    move-exception v2

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 284
    throw v2

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
        :pswitch_13
    .end packed-switch
.end method

.method public greylist scale(F)V
    .registers 4
    .param p1, "scale"    # F

    .line 808
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_28

    .line 809
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 810
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 811
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 812
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 814
    :cond_28
    return-void
.end method

.method public whitelist set(IIII)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 368
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 369
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 370
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 371
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    .line 372
    return-void
.end method

.method public whitelist set(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "src"    # Landroid/graphics/Rect;

    .line 381
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 382
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 383
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 384
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 385
    return-void
.end method

.method public whitelist setEmpty()V
    .registers 2

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 355
    return-void
.end method

.method public whitelist setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "a"    # Landroid/graphics/Rect;
    .param p2, "b"    # Landroid/graphics/Rect;

    .line 595
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_42

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_42

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_42

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_42

    .line 596
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 597
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 598
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 599
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 600
    const/4 v0, 0x1

    return v0

    .line 602
    :cond_42
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist sort()V
    .registers 3

    .line 702
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_e

    .line 703
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 704
    .local v0, "temp":I
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 705
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 707
    .end local v0    # "temp":I
    :cond_e
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_1c

    .line 708
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 709
    .restart local v0    # "temp":I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 710
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 712
    .end local v0    # "temp":I
    :cond_1c
    return-void
.end method

.method public varargs blacklist splitHorizontally([Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "outSplits"    # [Landroid/graphics/Rect;

    .line 737
    array-length v0, p1

    .line 738
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, v0

    .line 739
    .local v1, "splitHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_22

    .line 740
    aget-object v3, p1, v2

    .line 741
    .local v3, "split":Landroid/graphics/Rect;
    iget v4, p0, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 742
    iget v4, p0, Landroid/graphics/Rect;->top:I

    mul-int v5, v1, v2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 743
    iget v4, p0, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 744
    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 739
    .end local v3    # "split":Landroid/graphics/Rect;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 746
    .end local v2    # "i":I
    :cond_22
    return-void
.end method

.method public varargs blacklist splitVertically([Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "splits"    # [Landroid/graphics/Rect;

    .line 720
    array-length v0, p1

    .line 721
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, v0

    .line 722
    .local v1, "splitWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_22

    .line 723
    aget-object v3, p1, v2

    .line 724
    .local v3, "split":Landroid/graphics/Rect;
    iget v4, p0, Landroid/graphics/Rect;->left:I

    mul-int v5, v1, v2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 725
    iget v4, p0, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 726
    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 727
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 722
    .end local v3    # "split":Landroid/graphics/Rect;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 729
    .end local v2    # "i":I
    :cond_22
    return-void
.end method

.method public whitelist toShortString()Ljava/lang/String;
    .registers 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 176
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 155
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Rect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist union(II)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 682
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_7

    .line 683
    iput p1, p0, Landroid/graphics/Rect;->left:I

    goto :goto_d

    .line 684
    :cond_7
    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-le p1, v0, :cond_d

    .line 685
    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 687
    :cond_d
    :goto_d
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ge p2, v0, :cond_14

    .line 688
    iput p2, p0, Landroid/graphics/Rect;->top:I

    goto :goto_1a

    .line 689
    :cond_14
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-le p2, v0, :cond_1a

    .line 690
    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    .line 692
    :cond_1a
    :goto_1a
    return-void
.end method

.method public whitelist union(IIII)V
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 648
    if-ge p1, p3, :cond_31

    if-ge p2, p4, :cond_31

    .line 649
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_29

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_29

    .line 650
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-le v0, p1, :cond_16

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 651
    :cond_16
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-le v0, p2, :cond_1c

    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 652
    :cond_1c
    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, p3, :cond_22

    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 653
    :cond_22
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, p4, :cond_31

    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_31

    .line 655
    :cond_29
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 656
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 657
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 658
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    .line 661
    :cond_31
    :goto_31
    return-void
.end method

.method public whitelist union(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 671
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 672
    return-void
.end method

.method public final whitelist width()I
    .registers 3

    .line 307
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 763
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    return-void
.end method
