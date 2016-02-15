.class public Lcom/google/android/gsf/GoogleLoginCredentialsResult;
.super Ljava/lang/Object;
.source "GoogleLoginCredentialsResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/GoogleLoginCredentialsResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gsf/GoogleLoginCredentialsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mCredentialsIntent:Landroid/content/Intent;

.field private mCredentialsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 127
    new-instance v0, Lcom/google/android/gsf/GoogleLoginCredentialsResult$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/gsf/GoogleLoginCredentialsResult$1;-><init>()V

    #@5
    .line 126
    sput-object v0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 87
    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    #@6
    .line 88
    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    #@8
    .line 89
    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    #@a
    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 138
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 137
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gsf/GoogleLoginCredentialsResult;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    #@6
    invoke-virtual {v0}, Landroid/content/Intent;->describeContents()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    iput-object v1, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    #@6
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    #@c
    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    .line 146
    .local v0, "hasIntent":I
    const/4 v1, 0x0

    #@11
    iput-object v1, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    #@13
    .line 147
    const/4 v1, 0x1

    #@14
    if-ne v0, v1, :cond_0

    #@16
    .line 148
    new-instance v1, Landroid/content/Intent;

    #@18
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@1b
    iput-object v1, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    #@1d
    .line 149
    iget-object v1, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    #@1f
    invoke-virtual {v1, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    #@22
    .line 150
    iget-object v1, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    #@24
    invoke-virtual {p0}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->getClass()Ljava/lang/Class;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    #@2f
    .line 141
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 116
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6
    .line 117
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 119
    const/4 v0, 0x1

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 120
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    #@15
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 115
    :goto_0
    return-void

    #@19
    .line 122
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    goto :goto_0
.end method
