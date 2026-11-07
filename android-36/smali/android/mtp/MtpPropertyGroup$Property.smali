.class Landroid/mtp/MtpPropertyGroup$Property;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpPropertyGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Property"
.end annotation


# instance fields
.field greylist-max-o code:I

.field greylist-max-o column:I

.field greylist-max-o type:I


# direct methods
.method constructor blacklist <init>(Landroid/mtp/MtpPropertyGroup;III)V
    .registers 5
    .param p2, "code"    # I
    .param p3, "type"    # I
    .param p4, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p2, p0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 44
    iput p3, p0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 45
    iput p4, p0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    .line 46
    return-void
.end method
