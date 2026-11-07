.class public final Landroid/security/advancedprotection/AdvancedProtectionFeature;
.super Ljava/lang/Object;
.source "AdvancedProtectionFeature.java"

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
            "Landroid/security/advancedprotection/AdvancedProtectionFeature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionFeature$1;

    invoke-direct {v0}, Landroid/security/advancedprotection/AdvancedProtectionFeature$1;-><init>()V

    sput-object v0, Landroid/security/advancedprotection/AdvancedProtectionFeature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "id"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/security/advancedprotection/AdvancedProtectionFeature;->mId:I

    .line 42
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/advancedprotection/AdvancedProtectionFeature;->mId:I

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/advancedprotection/AdvancedProtectionFeature-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 52
    iget v0, p0, Landroid/security/advancedprotection/AdvancedProtectionFeature;->mId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    iget v0, p0, Landroid/security/advancedprotection/AdvancedProtectionFeature;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
