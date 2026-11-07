.class public final Landroid/app/ondeviceintelligence/Feature;
.super Ljava/lang/Object;
.source "Feature.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/Feature$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ondeviceintelligence/Feature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFeatureParams:Landroid/os/PersistableBundle;

.field private final blacklist mId:I

.field private final blacklist mModelName:Ljava/lang/String;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mType:I

.field private final blacklist mVariant:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 174
    new-instance v0, Landroid/app/ondeviceintelligence/Feature$1;

    invoke-direct {v0}, Landroid/app/ondeviceintelligence/Feature$1;-><init>()V

    sput-object v0, Landroid/app/ondeviceintelligence/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;IILandroid/os/PersistableBundle;)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "modelName"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "variant"    # I
    .param p6, "featureParams"    # Landroid/os/PersistableBundle;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    .line 55
    iput-object p2, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    .line 57
    iput p4, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    .line 58
    iput p5, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    .line 59
    iput-object p6, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    .line 60
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 156
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 157
    .local v1, "id":I
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "name":Ljava/lang/String;
    :goto_16
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_1c

    move-object v4, v3

    goto :goto_20

    :cond_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "modelName":Ljava/lang/String;
    :goto_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 160
    .local v5, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 161
    .local v6, "variant":I
    sget-object v7, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PersistableBundle;

    .line 164
    .local v7, "featureParams":Landroid/os/PersistableBundle;
    iput v1, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    .line 165
    iput-object v2, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    .line 166
    iput-object v4, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    .line 167
    iput v5, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    .line 168
    iput v6, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    .line 169
    iput-object v7, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    .line 170
    const-class v8, Landroid/annotation/NonNull;

    iget-object v9, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    invoke-static {v8, v3, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 172
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 108
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_48

    .line 110
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/ondeviceintelligence/Feature;

    .line 112
    .local v2, "that":Landroid/app/ondeviceintelligence/Feature;
    iget v3, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    iget v4, v2, Landroid/app/ondeviceintelligence/Feature;->mId:I

    if-ne v3, v4, :cond_46

    iget-object v3, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    .line 114
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    .line 115
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget v3, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    iget v4, v2, Landroid/app/ondeviceintelligence/Feature;->mType:I

    if-ne v3, v4, :cond_46

    iget v3, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    iget v4, v2, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    if-ne v3, v4, :cond_46

    iget-object v3, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    .line 118
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_47

    :cond_46
    move v0, v1

    .line 112
    :goto_47
    return v0

    .line 108
    .end local v2    # "that":Landroid/app/ondeviceintelligence/Feature;
    :cond_48
    :goto_48
    return v1
.end method

.method public whitelist getFeatureParams()Landroid/os/PersistableBundle;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 66
    iget v0, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    return v0
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    return v0
.end method

.method public whitelist getVariant()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 123
    const/4 v0, 0x1

    .line 124
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    add-int/2addr v1, v2

    .line 125
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 126
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 127
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    add-int/2addr v0, v2

    .line 128
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    add-int/2addr v1, v2

    .line 129
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 130
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feature { id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", variant = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", featureParams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 137
    :cond_8
    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 138
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 139
    iget v1, p0, Landroid/app/ondeviceintelligence/Feature;->mId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    :cond_20
    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mModelName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    :cond_29
    iget v1, p0, Landroid/app/ondeviceintelligence/Feature;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v1, p0, Landroid/app/ondeviceintelligence/Feature;->mVariant:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v1, p0, Landroid/app/ondeviceintelligence/Feature;->mFeatureParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 145
    return-void
.end method
