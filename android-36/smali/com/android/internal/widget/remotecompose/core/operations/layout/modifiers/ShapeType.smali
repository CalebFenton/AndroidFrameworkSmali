.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ShapeType;
.super Ljava/lang/Object;
.source "ShapeType.java"


# static fields
.field public static final blacklist CIRCLE:I = 0x1

.field public static final blacklist RECTANGLE:I = 0x0

.field public static final blacklist ROUNDED_RECTANGLE:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getString(I)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # I

    .line 31
    packed-switch p0, :pswitch_data_26

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID_SHAPE_TYPE["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :pswitch_1d
    const-string v0, "ROUNDED_RECTANGLE"

    return-object v0

    .line 35
    :pswitch_20
    const-string v0, "CIRCLE"

    return-object v0

    .line 33
    :pswitch_23
    const-string v0, "RECTANGLE"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method
