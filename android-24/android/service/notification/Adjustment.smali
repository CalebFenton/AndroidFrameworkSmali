.class public final Landroid/service/notification/Adjustment;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/Adjustment$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/Adjustment;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_KEY_OVERRIDE_KEY:Ljava/lang/String; = "group_key_override"

.field public static final NEEDS_AUTOGROUPING_KEY:Ljava/lang/String; = "autogroup_needed"


# instance fields
.field private final mExplanation:Ljava/lang/CharSequence;

.field private final mImportance:I

.field private final mKey:Ljava/lang/String;

.field private final mPackage:Ljava/lang/String;

.field private final mReference:Landroid/net/Uri;

.field private final mSignals:Landroid/os/Bundle;

.field private final mUser:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 88
    new-instance v0, Landroid/service/notification/Adjustment$1;

    #@2
    invoke-direct {v0}, Landroid/service/notification/Adjustment$1;-><init>()V

    #@5
    sput-object v0, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    #@11
    .line 72
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    #@1d
    .line 77
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    iput v0, p0, Landroid/service/notification/Adjustment;->mImportance:I

    #@23
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    if-ne v0, v1, :cond_2

    #@29
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    #@2f
    .line 83
    :goto_2
    const-class v0, Landroid/net/Uri;

    #@31
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/net/Uri;

    #@3b
    iput-object v0, p0, Landroid/service/notification/Adjustment;->mReference:Landroid/net/Uri;

    #@3d
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    #@43
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    iput v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    #@49
    .line 66
    return-void

    #@4a
    .line 70
    :cond_0
    iput-object v2, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    #@4c
    goto :goto_0

    #@4d
    .line 75
    :cond_1
    iput-object v2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    #@4f
    goto :goto_1

    #@50
    .line 81
    :cond_2
    iput-object v2, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    #@52
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/CharSequence;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "importance"    # I
    .param p4, "signals"    # Landroid/os/Bundle;
    .param p5, "explanation"    # Ljava/lang/CharSequence;
    .param p6, "reference"    # Landroid/net/Uri;
    .param p7, "user"    # I

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    #@5
    .line 58
    iput-object p2, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    #@7
    .line 59
    iput p3, p0, Landroid/service/notification/Adjustment;->mImportance:I

    #@9
    .line 60
    iput-object p4, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    #@b
    .line 61
    iput-object p5, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    #@d
    .line 62
    iput-object p6, p0, Landroid/service/notification/Adjustment;->mReference:Landroid/net/Uri;

    #@f
    .line 63
    iput p7, p0, Landroid/service/notification/Adjustment;->mUser:I

    #@11
    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 130
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getExplanation()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getImportance()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget v0, p0, Landroid/service/notification/Adjustment;->mImportance:I

    #@2
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getReference()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mReference:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getSignals()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getUser()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 135
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 136
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 137
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mPackage:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 141
    :goto_0
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 142
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 143
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mKey:Ljava/lang/String;

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 147
    :goto_1
    iget v0, p0, Landroid/service/notification/Adjustment;->mImportance:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 148
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 149
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 150
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mExplanation:Ljava/lang/CharSequence;

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@2b
    .line 154
    :goto_2
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mReference:Landroid/net/Uri;

    #@2d
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@30
    .line 155
    iget-object v0, p0, Landroid/service/notification/Adjustment;->mSignals:Landroid/os/Bundle;

    #@32
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@35
    .line 156
    iget v0, p0, Landroid/service/notification/Adjustment;->mUser:I

    #@37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 134
    return-void

    #@3b
    .line 139
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    goto :goto_0

    #@3f
    .line 145
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    goto :goto_1

    #@43
    .line 152
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    goto :goto_2
.end method
