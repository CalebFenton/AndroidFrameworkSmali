.class public final Landroid/window/KeyguardState;
.super Ljava/lang/Object;
.source "KeyguardState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/KeyguardState$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/KeyguardState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAodShowing:Z

.field private final blacklist mKeyguardShowing:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/window/KeyguardState$1;

    invoke-direct {v0}, Landroid/window/KeyguardState$1;-><init>()V

    sput-object v0, Landroid/window/KeyguardState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/KeyguardState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/KeyguardState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(ZZ)V
    .registers 3
    .param p1, "keyguardShowing"    # Z
    .param p2, "aodShowing"    # Z

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    .line 40
    iput-boolean p2, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    .line 41
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZLandroid/window/KeyguardState-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/window/KeyguardState;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 92
    instance-of v0, p1, Landroid/window/KeyguardState;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    move-object v0, p1

    check-cast v0, Landroid/window/KeyguardState;

    .line 95
    .local v0, "other":Landroid/window/KeyguardState;
    iget-boolean v2, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    iget-boolean v3, v0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    if-ne v2, v3, :cond_15

    iget-boolean v2, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    iget-boolean v3, v0, Landroid/window/KeyguardState;->mAodShowing:Z

    if-ne v2, v3, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1

    .line 93
    .end local v0    # "other":Landroid/window/KeyguardState;
    :cond_16
    return v1
.end method

.method public blacklist getAodShowing()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    return v0
.end method

.method public blacklist getKeyguardShowing()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 87
    iget-boolean v0, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyguardState{ keyguardShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aodShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 50
    iget-boolean v0, p0, Landroid/window/KeyguardState;->mKeyguardShowing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 51
    iget-boolean v0, p0, Landroid/window/KeyguardState;->mAodShowing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 52
    return-void
.end method
