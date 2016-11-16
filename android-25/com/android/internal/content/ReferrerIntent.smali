.class public Lcom/android/internal/content/ReferrerIntent;
.super Landroid/content/Intent;
.source "ReferrerIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/ReferrerIntent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mReferrer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 43
    new-instance v0, Lcom/android/internal/content/ReferrerIntent$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/content/ReferrerIntent$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "referrer"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@3
    .line 30
    iput-object p2, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    #@5
    .line 28
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    #@3
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/content/ReferrerIntent;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    #@c
    .line 38
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 35
    iget-object v0, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@8
    .line 33
    return-void
.end method
