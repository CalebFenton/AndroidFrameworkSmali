.class public final Landroid/app/admin/DevicePolicyDrawableResource;
.super Ljava/lang/Object;
.source "DevicePolicyDrawableResource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/DevicePolicyDrawableResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDrawableId:Ljava/lang/String;

.field private final blacklist mDrawableSource:Ljava/lang/String;

.field private final blacklist mDrawableStyle:Ljava/lang/String;

.field private blacklist mResource:Landroid/app/admin/ParcelableResource;

.field private final blacklist mResourceIdInCallingPackage:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 189
    new-instance v0, Landroid/app/admin/DevicePolicyDrawableResource$1;

    invoke-direct {v0}, Landroid/app/admin/DevicePolicyDrawableResource$1;-><init>()V

    sput-object v0, Landroid/app/admin/DevicePolicyDrawableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableId"    # Ljava/lang/String;
    .param p3, "drawableStyle"    # Ljava/lang/String;
    .param p4, "resourceIdInCallingPackage"    # I

    .line 110
    const-string v4, "UNDEFINED"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "drawableId":Ljava/lang/String;
    .end local p3    # "drawableStyle":Ljava/lang/String;
    .end local p4    # "resourceIdInCallingPackage":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "drawableId":Ljava/lang/String;
    .local v3, "drawableStyle":Ljava/lang/String;
    .local v5, "resourceIdInCallingPackage":I
    invoke-direct/range {v0 .. v5}, Landroid/app/admin/DevicePolicyDrawableResource;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawableId"    # Ljava/lang/String;
    .param p3, "drawableStyle"    # Ljava/lang/String;
    .param p4, "drawableSource"    # Ljava/lang/String;
    .param p5, "resourceIdInCallingPackage"    # I

    .line 66
    new-instance v5, Landroid/app/admin/ParcelableResource;

    const/4 v0, 0x1

    invoke-direct {v5, p1, p5, v0}, Landroid/app/admin/ParcelableResource;-><init>(Landroid/content/Context;II)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    .end local p2    # "drawableId":Ljava/lang/String;
    .end local p3    # "drawableStyle":Ljava/lang/String;
    .end local p4    # "drawableSource":Ljava/lang/String;
    .end local p5    # "resourceIdInCallingPackage":I
    .local v1, "drawableId":Ljava/lang/String;
    .local v2, "drawableStyle":Ljava/lang/String;
    .local v3, "drawableSource":Ljava/lang/String;
    .local v4, "resourceIdInCallingPackage":I
    invoke-direct/range {v0 .. v5}, Landroid/app/admin/DevicePolicyDrawableResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource;)V

    .line 69
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource;)V
    .registers 6
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "drawableSource"    # Ljava/lang/String;
    .param p4, "resourceIdInCallingPackage"    # I
    .param p5, "resource"    # Landroid/app/admin/ParcelableResource;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableId:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableStyle:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableSource:Ljava/lang/String;

    .line 86
    iput p4, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResourceIdInCallingPackage:I

    .line 87
    iput-object p5, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResource:Landroid/app/admin/ParcelableResource;

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource;Landroid/app/admin/DevicePolicyDrawableResource-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/app/admin/DevicePolicyDrawableResource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 159
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 160
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_46

    .line 161
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/DevicePolicyDrawableResource;

    .line 162
    .local v2, "other":Landroid/app/admin/DevicePolicyDrawableResource;
    iget-object v3, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableId:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableStyle:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableStyle:Ljava/lang/String;

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableSource:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableSource:Ljava/lang/String;

    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget v3, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResourceIdInCallingPackage:I

    iget v4, v2, Landroid/app/admin/DevicePolicyDrawableResource;->mResourceIdInCallingPackage:I

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResource:Landroid/app/admin/ParcelableResource;

    iget-object v4, v2, Landroid/app/admin/DevicePolicyDrawableResource;->mResource:Landroid/app/admin/ParcelableResource;

    .line 166
    invoke-virtual {v3, v4}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    .line 162
    :goto_45
    return v0

    .line 160
    .end local v2    # "other":Landroid/app/admin/DevicePolicyDrawableResource;
    :cond_46
    :goto_46
    return v1
.end method

.method public whitelist getDrawableId()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDrawableSource()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableSource:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDrawableStyle()Ljava/lang/String;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableStyle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResource()Landroid/app/admin/ParcelableResource;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResource:Landroid/app/admin/ParcelableResource;

    return-object v0
.end method

.method public whitelist getResourceIdInCallingPackage()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResourceIdInCallingPackage:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 171
    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableId:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableStyle:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableSource:Ljava/lang/String;

    iget v3, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResourceIdInCallingPackage:I

    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResource:Landroid/app/admin/ParcelableResource;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 171
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 182
    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableStyle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mDrawableSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResourceIdInCallingPackage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Landroid/app/admin/DevicePolicyDrawableResource;->mResource:Landroid/app/admin/ParcelableResource;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    return-void
.end method
