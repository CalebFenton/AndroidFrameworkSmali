.class public final Landroid/hardware/input/KeyboardLayoutSelectionResult;
.super Ljava/lang/Object;
.source "KeyboardLayoutSelectionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyboardLayoutSelectionResult$LayoutSelectionCriteria;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/KeyboardLayoutSelectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_DEFAULT:I = 0x4

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_DEVICE:I = 0x2

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_UNSPECIFIED:I = 0x0

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_USER:I = 0x1

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD:I = 0x3


# instance fields
.field private final blacklist mLayoutDescriptor:Ljava/lang/String;

.field private final blacklist mSelectionCriteria:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 60
    new-instance v0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 235
    new-instance v0, Landroid/hardware/input/KeyboardLayoutSelectionResult$1;

    invoke-direct {v0}, Landroid/hardware/input/KeyboardLayoutSelectionResult$1;-><init>()V

    sput-object v0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 210
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "layoutDescriptor":Ljava/lang/String;
    :goto_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .local v2, "selectionCriteria":I
    iput-object v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    .line 214
    iput v2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    .line 216
    iget v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    if-eqz v3, :cond_86

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_86

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_86

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_86

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v7, 0x4

    if-ne v3, v7, :cond_32

    goto :goto_86

    .line 221
    :cond_32
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectionCriteria was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but must be one of: LAYOUT_SELECTION_CRITERIA_UNSPECIFIED("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), LAYOUT_SELECTION_CRITERIA_USER("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "), LAYOUT_SELECTION_CRITERIA_DEVICE("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), LAYOUT_SELECTION_CRITERIA_DEFAULT("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 232
    :cond_86
    :goto_86
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 10
    .param p1, "layoutDescriptor"    # Ljava/lang/String;
    .param p2, "selectionCriteria"    # I

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    .line 114
    iput p2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    .line 116
    iget v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    if-eqz v0, :cond_74

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_74

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_74

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_74

    iget v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_20

    goto :goto_74

    .line 121
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectionCriteria was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but must be one of: LAYOUT_SELECTION_CRITERIA_UNSPECIFIED("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), LAYOUT_SELECTION_CRITERIA_USER("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "), LAYOUT_SELECTION_CRITERIA_DEVICE("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), LAYOUT_SELECTION_CRITERIA_DEFAULT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_74
    :goto_74
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    return-void
.end method

.method public static blacklist layoutSelectionCriteriaToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 94
    packed-switch p0, :pswitch_data_18

    .line 105
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_8
    const-string v0, "LAYOUT_SELECTION_CRITERIA_DEFAULT"

    return-object v0

    .line 102
    :pswitch_b
    const-string v0, "LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD"

    return-object v0

    .line 100
    :pswitch_e
    const-string v0, "LAYOUT_SELECTION_CRITERIA_DEVICE"

    return-object v0

    .line 98
    :pswitch_11
    const-string v0, "LAYOUT_SELECTION_CRITERIA_USER"

    return-object v0

    .line 96
    :pswitch_14
    const-string v0, "LAYOUT_SELECTION_CRITERIA_UNSPECIFIED"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 163
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 164
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 166
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 168
    .local v2, "that":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    iget-object v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    .line 169
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget v3, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    iget v4, v2, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    .line 168
    :goto_27
    return v0

    .line 164
    .end local v2    # "that":Landroid/hardware/input/KeyboardLayoutSelectionResult;
    :cond_28
    :goto_28
    return v1
.end method

.method public blacklist getLayoutDescriptor()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSelectionCriteria()I
    .registers 2

    .line 141
    iget v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 179
    const/4 v0, 0x1

    .line 180
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 181
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    add-int/2addr v0, v2

    .line 182
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyboardLayoutSelectionResult { layoutDescriptor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectionCriteria = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    .line 152
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->layoutSelectionCriteriaToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "flg":B
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 193
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 194
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    :cond_14
    iget v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return-void
.end method
