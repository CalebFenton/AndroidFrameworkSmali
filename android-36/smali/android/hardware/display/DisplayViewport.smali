.class public final Landroid/hardware/display/DisplayViewport;
.super Ljava/lang/Object;
.source "DisplayViewport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayViewport$ViewportType;
    }
.end annotation


# static fields
.field public static final blacklist VIEWPORT_EXTERNAL:I = 0x2

.field public static final blacklist VIEWPORT_INTERNAL:I = 0x1

.field public static final blacklist VIEWPORT_VIRTUAL:I = 0x3


# instance fields
.field public greylist-max-o deviceHeight:I

.field public greylist-max-o deviceWidth:I

.field public greylist-max-o displayId:I

.field public blacklist isActive:Z

.field public final greylist-max-o logicalFrame:Landroid/graphics/Rect;

.field public greylist-max-o orientation:I

.field public final greylist-max-o physicalFrame:Landroid/graphics/Rect;

.field public blacklist physicalPort:Ljava/lang/Integer;

.field public blacklist type:I

.field public greylist-max-o uniqueId:Ljava/lang/String;

.field public greylist-max-o valid:Z


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "viewportType"    # I

    .line 172
    packed-switch p0, :pswitch_data_26

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_1d
    const-string v0, "VIRTUAL"

    return-object v0

    .line 176
    :pswitch_20
    const-string v0, "EXTERNAL"

    return-object v0

    .line 174
    :pswitch_23
    const-string v0, "INTERNAL"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o copyFrom(Landroid/hardware/display/DisplayViewport;)V
    .registers 4
    .param p1, "viewport"    # Landroid/hardware/display/DisplayViewport;

    .line 85
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->valid:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 86
    iget-boolean v0, p1, Landroid/hardware/display/DisplayViewport;->isActive:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayViewport;->isActive:Z

    .line 87
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->displayId:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 88
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->orientation:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    .line 89
    iget-object v0, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 90
    iget-object v0, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 91
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    .line 92
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    .line 93
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    .line 95
    iget v0, p1, Landroid/hardware/display/DisplayViewport;->type:I

    iput v0, p0, Landroid/hardware/display/DisplayViewport;->type:I

    .line 96
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 110
    return v0

    .line 113
    :cond_4
    instance-of v1, p1, Landroid/hardware/display/DisplayViewport;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 114
    return v2

    .line 117
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/display/DisplayViewport;

    .line 118
    .local v1, "other":Landroid/hardware/display/DisplayViewport;
    iget-boolean v3, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    iget-boolean v4, v1, Landroid/hardware/display/DisplayViewport;->valid:Z

    if-ne v3, v4, :cond_60

    iget-boolean v3, p0, Landroid/hardware/display/DisplayViewport;->isActive:Z

    iget-boolean v4, v1, Landroid/hardware/display/DisplayViewport;->isActive:Z

    if-ne v3, v4, :cond_60

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    iget v4, v1, Landroid/hardware/display/DisplayViewport;->displayId:I

    if-ne v3, v4, :cond_60

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    iget v4, v1, Landroid/hardware/display/DisplayViewport;->orientation:I

    if-ne v3, v4, :cond_60

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    .line 122
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    .line 123
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    iget v4, v1, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    if-ne v3, v4, :cond_60

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    iget v4, v1, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    if-ne v3, v4, :cond_60

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 126
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_60

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    iget-object v4, v1, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    .line 127
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->type:I

    iget v4, v1, Landroid/hardware/display/DisplayViewport;->type:I

    if-ne v3, v4, :cond_60

    goto :goto_61

    :cond_60
    move v0, v2

    .line 118
    :goto_61
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 133
    const/16 v0, 0x1f

    .line 134
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 135
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 136
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/display/DisplayViewport;->isActive:Z

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 137
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 138
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 139
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 140
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 141
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 142
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 143
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 144
    iget-object v2, p0, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    if-eqz v2, :cond_53

    .line 145
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 147
    :cond_53
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/display/DisplayViewport;->type:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 148
    return v1
.end method

.method public greylist-max-o makeCopy()Landroid/hardware/display/DisplayViewport;
    .registers 2

    .line 102
    new-instance v0, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v0}, Landroid/hardware/display/DisplayViewport;-><init>()V

    .line 103
    .local v0, "dv":Landroid/hardware/display/DisplayViewport;
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V

    .line 104
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayViewport{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->type:I

    invoke-static {v1}, Landroid/hardware/display/DisplayViewport;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", valid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayViewport;->valid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/display/DisplayViewport;->isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uniqueId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', physicalPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logicalFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", physicalFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
