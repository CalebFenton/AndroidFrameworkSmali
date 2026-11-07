.class public final Landroid/app/admin/NoArgsPolicyKey;
.super Landroid/app/admin/PolicyKey;
.source "NoArgsPolicyKey.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/NoArgsPolicyKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/app/admin/NoArgsPolicyKey$1;

    invoke-direct {v0}, Landroid/app/admin/NoArgsPolicyKey$1;-><init>()V

    sput-object v0, Landroid/app/admin/NoArgsPolicyKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/NoArgsPolicyKey-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "identifier"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Landroid/app/admin/PolicyKey;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultPolicyKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/NoArgsPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 52
    const-string v0, "android.app.admin.extra.POLICY_KEY"

    invoke-virtual {p0}, Landroid/app/admin/NoArgsPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    invoke-virtual {p0}, Landroid/app/admin/NoArgsPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return-void
.end method
