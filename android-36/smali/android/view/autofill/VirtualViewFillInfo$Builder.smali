.class public final Landroid/view/autofill/VirtualViewFillInfo$Builder;
.super Ljava/lang/Object;
.source "VirtualViewFillInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/VirtualViewFillInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAutofillHints:[Ljava/lang/String;

.field private blacklist mBuilderFieldsSet:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/autofill/VirtualViewFillInfo$Builder;->mBuilderFieldsSet:J

    .line 93
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 122
    iget-wide v0, p0, Landroid/view/autofill/VirtualViewFillInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 126
    return-void

    .line 123
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/view/autofill/VirtualViewFillInfo;
    .registers 5

    .line 110
    invoke-direct {p0}, Landroid/view/autofill/VirtualViewFillInfo$Builder;->checkNotUsed()V

    .line 111
    iget-wide v0, p0, Landroid/view/autofill/VirtualViewFillInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/autofill/VirtualViewFillInfo$Builder;->mBuilderFieldsSet:J

    .line 113
    iget-wide v0, p0, Landroid/view/autofill/VirtualViewFillInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 114
    invoke-static {}, Landroid/view/autofill/VirtualViewFillInfo;->-$$Nest$smdefaultAutofillHints()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/VirtualViewFillInfo$Builder;->mAutofillHints:[Ljava/lang/String;

    .line 116
    :cond_1b
    new-instance v0, Landroid/view/autofill/VirtualViewFillInfo;

    iget-object v1, p0, Landroid/view/autofill/VirtualViewFillInfo$Builder;->mAutofillHints:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/view/autofill/VirtualViewFillInfo;-><init>([Ljava/lang/String;)V

    .line 118
    .local v0, "o":Landroid/view/autofill/VirtualViewFillInfo;
    return-object v0
.end method

.method public varargs whitelist setAutofillHints([Ljava/lang/String;)Landroid/view/autofill/VirtualViewFillInfo$Builder;
    .registers 6
    .param p1, "value"    # [Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Landroid/view/autofill/VirtualViewFillInfo$Builder;->checkNotUsed()V

    .line 103
    iget-wide v0, p0, Landroid/view/autofill/VirtualViewFillInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/autofill/VirtualViewFillInfo$Builder;->mBuilderFieldsSet:J

    .line 104
    iput-object p1, p0, Landroid/view/autofill/VirtualViewFillInfo$Builder;->mAutofillHints:[Ljava/lang/String;

    .line 105
    return-object p0
.end method
