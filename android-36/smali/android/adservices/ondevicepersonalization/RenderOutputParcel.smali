.class public final Landroid/adservices/ondevicepersonalization/RenderOutputParcel;
.super Ljava/lang/Object;
.source "RenderOutputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/RenderOutputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContent:Ljava/lang/String;

.field private blacklist mTemplateId:Ljava/lang/String;

.field private blacklist mTemplateParams:Landroid/os/PersistableBundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 172
    new-instance v0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/RenderOutputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/RenderOutput;)V
    .registers 5
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/RenderOutput;

    .line 55
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RenderOutput;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RenderOutput;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/RenderOutput;->getTemplateParams()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 56
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mContent:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateId:Ljava/lang/String;

    .line 51
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateParams:Landroid/os/PersistableBundle;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 158
    .local v1, "flg":B
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_16

    move-object v2, v0

    goto :goto_1a

    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "content":Ljava/lang/String;
    :goto_1a
    and-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_20

    move-object v3, v0

    goto :goto_24

    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "templateId":Ljava/lang/String;
    :goto_24
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 162
    .local v4, "templateParams":Landroid/os/PersistableBundle;
    iput-object v2, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mContent:Ljava/lang/String;

    .line 163
    iput-object v3, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateId:Ljava/lang/String;

    .line 164
    iput-object v4, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateParams:Landroid/os/PersistableBundle;

    .line 165
    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateParams:Landroid/os/PersistableBundle;

    invoke-static {v5, v0, v6}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "templateId"    # Ljava/lang/String;
    .param p3, "templateParams"    # Landroid/os/PersistableBundle;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mContent:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateId:Ljava/lang/String;

    .line 51
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateParams:Landroid/os/PersistableBundle;

    .line 93
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mContent:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateId:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateParams:Landroid/os/PersistableBundle;

    .line 96
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateParams:Landroid/os/PersistableBundle;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getContent()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTemplateId()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTemplateParams()Landroid/os/PersistableBundle;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateParams:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "flg":B
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mContent:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 139
    :cond_8
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateId:Ljava/lang/String;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 140
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 141
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mContent:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    :cond_1b
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateId:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    :cond_24
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderOutputParcel;->mTemplateParams:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    return-void
.end method
