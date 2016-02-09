.class public final Landroid/print/PrinterId;
.super Ljava/lang/Object;
.source "PrinterId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterId$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLocalId:Ljava/lang/String;

.field private final mServiceName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 129
    new-instance v0, Landroid/print/PrinterId$1;

    #@2
    invoke-direct {v0}, Landroid/print/PrinterId$1;-><init>()V

    #@5
    .line 128
    sput-object v0, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Landroid/content/ComponentName;
    .param p2, "localId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    #@5
    .line 43
    iput-object p2, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    #@7
    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/content/ComponentName;

    #@a
    iput-object v0, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    #@c
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    #@12
    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrinterId;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrinterId;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 74
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 85
    if-ne p0, p1, :cond_0

    #@4
    .line 86
    return v4

    #@5
    .line 88
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 89
    return v3

    #@8
    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/print/PrinterId;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 92
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 94
    check-cast v0, Landroid/print/PrinterId;

    #@16
    .line 95
    .local v0, "other":Landroid/print/PrinterId;
    iget-object v1, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 96
    iget-object v1, v0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 97
    return v3

    #@1f
    .line 99
    :cond_3
    iget-object v1, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    #@21
    iget-object v2, v0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    #@23
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_4

    #@29
    .line 100
    return v3

    #@2a
    .line 102
    :cond_4
    iget-object v1, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    #@2c
    iget-object v2, v0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    #@2e
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_5

    #@34
    .line 103
    return v3

    #@35
    .line 105
    :cond_5
    return v4
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getServiceName()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 110
    const/16 v1, 0x1f

    #@2
    .line 112
    .local v1, "prime":I
    iget-object v2, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 113
    iget-object v2, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    #@8
    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    #@b
    move-result v2

    #@c
    .line 112
    :goto_0
    add-int/lit8 v0, v2, 0x1f

    #@e
    .line 114
    .local v0, "hashCode":I
    mul-int/lit8 v2, v0, 0x1f

    #@10
    iget-object v3, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    #@12
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@15
    move-result v3

    #@16
    add-int v0, v2, v3

    #@18
    .line 115
    return v0

    #@19
    .line 113
    .end local v0    # "hashCode":I
    :cond_0
    const/4 v2, 0x1

    #@1a
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 121
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PrinterId{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 122
    const-string/jumbo v1, "serviceName="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    #@14
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 123
    const-string/jumbo v1, ", localId="

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    iget-object v2, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 124
    const/16 v1, 0x7d

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/print/PrinterId;->mServiceName:Landroid/content/ComponentName;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 80
    iget-object v0, p0, Landroid/print/PrinterId;->mLocalId:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 78
    return-void
.end method
