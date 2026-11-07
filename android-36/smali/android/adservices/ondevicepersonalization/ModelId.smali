.class public final Landroid/adservices/ondevicepersonalization/ModelId;
.super Ljava/lang/Object;
.source "ModelId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/ModelId$TABLE;,
        Landroid/adservices/ondevicepersonalization/ModelId$Builder;,
        Landroid/adservices/ondevicepersonalization/ModelId$TableId;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/ModelId;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TABLE_ID_LOCAL_DATA:I = 0x2

.field public static final blacklist TABLE_ID_REMOTE_DATA:I = 0x1


# instance fields
.field private blacklist mKey:Ljava/lang/String;

.field private blacklist mTableId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 164
    new-instance v0, Landroid/adservices/ondevicepersonalization/ModelId$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/ModelId$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/ModelId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;)V
    .registers 6
    .param p1, "tableId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mTableId:I

    .line 85
    const-class v0, Landroid/adservices/ondevicepersonalization/ModelId$TABLE;

    iget v1, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mTableId:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 86
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mKey:Ljava/lang/String;

    .line 87
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mKey:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 153
    .local v0, "tableId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "key":Ljava/lang/String;
    iput v0, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mTableId:I

    .line 156
    const-class v2, Landroid/adservices/ondevicepersonalization/ModelId$TABLE;

    iget v3, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mTableId:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 157
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mKey:Ljava/lang/String;

    .line 158
    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mKey:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public static blacklist tableIdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 72
    packed-switch p0, :pswitch_data_e

    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :pswitch_8
    const-string v0, "TABLE_ID_LOCAL_DATA"

    return-object v0

    .line 74
    :pswitch_b
    const-string v0, "TABLE_ID_REMOTE_DATA"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 110
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 112
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/ModelId;

    .line 114
    .local v2, "that":Landroid/adservices/ondevicepersonalization/ModelId;
    iget v3, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mTableId:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/ModelId;->mTableId:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mKey:Ljava/lang/String;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/ModelId;->mKey:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    .line 110
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/ModelId;
    :cond_28
    :goto_28
    return v1
.end method

.method public blacklist getKey()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTableId()I
    .registers 2

    .line 94
    iget v0, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mTableId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 123
    const/4 v0, 0x1

    .line 124
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mTableId:I

    add-int/2addr v1, v2

    .line 125
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mKey:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 126
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget v0, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mTableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/ModelId;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return-void
.end method
