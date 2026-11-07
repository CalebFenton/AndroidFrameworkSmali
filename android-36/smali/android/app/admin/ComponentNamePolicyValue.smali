.class public final Landroid/app/admin/ComponentNamePolicyValue;
.super Landroid/app/admin/PolicyValue;
.source "ComponentNamePolicyValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/admin/PolicyValue<",
        "Landroid/content/ComponentName;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/ComponentNamePolicyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Landroid/app/admin/ComponentNamePolicyValue$1;

    invoke-direct {v0}, Landroid/app/admin/ComponentNamePolicyValue$1;-><init>()V

    sput-object v0, Landroid/app/admin/ComponentNamePolicyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "value"    # Landroid/content/ComponentName;

    .line 32
    invoke-direct {p0, p1}, Landroid/app/admin/PolicyValue;-><init>(Ljava/lang/Object;)V

    .line 33
    invoke-static {p1}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxComponentNameLength(Landroid/content/ComponentName;)V

    .line 34
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 37
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Landroid/app/admin/ComponentNamePolicyValue;-><init>(Landroid/content/ComponentName;)V

    .line 38
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/ComponentNamePolicyValue-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/ComponentNamePolicyValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 42
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 43
    :cond_4
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_21

    .line 44
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/admin/ComponentNamePolicyValue;

    .line 45
    .local v0, "other":Landroid/app/admin/ComponentNamePolicyValue;
    invoke-virtual {p0}, Landroid/app/admin/ComponentNamePolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/admin/ComponentNamePolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 43
    .end local v0    # "other":Landroid/app/admin/ComponentNamePolicyValue;
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 50
    invoke-virtual {p0}, Landroid/app/admin/ComponentNamePolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentNamePolicyValue { mValue= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/ComponentNamePolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

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
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    invoke-virtual {p0}, Landroid/app/admin/ComponentNamePolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 66
    return-void
.end method
