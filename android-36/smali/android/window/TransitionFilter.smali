.class public final Landroid/window/TransitionFilter;
.super Ljava/lang/Object;
.source "TransitionFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionFilter$Requirement;,
        Landroid/window/TransitionFilter$ContainerOrder;
    }
.end annotation


# static fields
.field public static final blacklist CONTAINER_ORDER_ANY:I = 0x0

.field public static final blacklist CONTAINER_ORDER_TOP:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mFlags:I

.field public blacklist mNotFlags:I

.field public blacklist mRequirements:[Landroid/window/TransitionFilter$Requirement;

.field public blacklist mTypeSet:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcontainerOrderToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/window/TransitionFilter;->containerOrderToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 123
    new-instance v0, Landroid/window/TransitionFilter$1;

    invoke-direct {v0}, Landroid/window/TransitionFilter$1;-><init>()V

    sput-object v0, Landroid/window/TransitionFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Landroid/window/TransitionFilter;->mFlags:I

    .line 65
    iput v1, p0, Landroid/window/TransitionFilter;->mNotFlags:I

    .line 70
    iput-object v0, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    .line 73
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Landroid/window/TransitionFilter;->mFlags:I

    .line 65
    iput v1, p0, Landroid/window/TransitionFilter;->mNotFlags:I

    .line 70
    iput-object v0, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionFilter;->mFlags:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionFilter;->mNotFlags:I

    .line 79
    sget-object v0, Landroid/window/TransitionFilter$Requirement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/window/TransitionFilter$Requirement;

    iput-object v0, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionFilter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TransitionFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist containerOrderToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "order"    # I

    .line 387
    packed-switch p0, :pswitch_data_24

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

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

    .line 389
    :pswitch_1d
    const-string v0, "TOP"

    return-object v0

    .line 388
    :pswitch_20
    const-string v0, "ANY"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist matches(Landroid/window/TransitionInfo;)Z
    .registers 7
    .param p1, "info"    # Landroid/window/TransitionInfo;

    .line 84
    iget-object v0, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "typePass":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1b

    .line 88
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    iget-object v4, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_18

    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_1b

    .line 87
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 93
    .end local v2    # "i":I
    :cond_1b
    :goto_1b
    if-nez v0, :cond_1e

    return v1

    .line 95
    .end local v0    # "typePass":Z
    :cond_1e
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    iget v2, p0, Landroid/window/TransitionFilter;->mFlags:I

    and-int/2addr v0, v2

    iget v2, p0, Landroid/window/TransitionFilter;->mFlags:I

    if-eq v0, v2, :cond_2a

    .line 96
    return v1

    .line 98
    :cond_2a
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    iget v2, p0, Landroid/window/TransitionFilter;->mNotFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_34

    .line 99
    return v1

    .line 102
    :cond_34
    iget-object v0, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    if-eqz v0, :cond_52

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    iget-object v2, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    array-length v2, v2

    if-ge v0, v2, :cond_52

    .line 104
    iget-object v2, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/window/TransitionFilter$Requirement;->matches(Landroid/window/TransitionInfo;)Z

    move-result v2

    .line 105
    .local v2, "matches":Z
    iget-object v3, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    if-ne v2, v3, :cond_4f

    .line 106
    return v1

    .line 103
    .end local v2    # "matches":Z
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 110
    .end local v0    # "i":I
    :cond_52
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{types=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    const-string v2, ""

    const-string v3, ","

    if-eqz v1, :cond_3d

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget-object v4, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    array-length v4, v4

    if-ge v1, v4, :cond_3d

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_22

    move-object v5, v2

    goto :goto_23

    :cond_22
    move-object v5, v3

    :goto_23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    aget v5, v5, v1

    invoke-static {v5}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 151
    .end local v1    # "i":I
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "] flags=0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/window/TransitionFilter;->mFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "] notFlags=0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/window/TransitionFilter;->mNotFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, " checks=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v1, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    if-eqz v1, :cond_a4

    .line 155
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7f
    iget-object v4, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    array-length v4, v4

    if-ge v1, v4, :cond_a4

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_8d

    move-object v5, v2

    goto :goto_8e

    :cond_8d
    move-object v5, v3

    :goto_8e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 159
    .end local v1    # "i":I
    :cond_a4
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 116
    iget-object v0, p0, Landroid/window/TransitionFilter;->mTypeSet:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 117
    iget v0, p0, Landroid/window/TransitionFilter;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Landroid/window/TransitionFilter;->mNotFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Landroid/window/TransitionFilter;->mRequirements:[Landroid/window/TransitionFilter$Requirement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 120
    return-void
.end method
