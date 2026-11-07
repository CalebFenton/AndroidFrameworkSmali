.class public final Landroid/app/smartspace/uitemplatedata/Icon;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/Icon$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/Icon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContentDescription:Ljava/lang/CharSequence;

.field private final blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mShouldTint:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Landroid/app/smartspace/uitemplatedata/Icon$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/Icon$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentDescription"    # Ljava/lang/CharSequence;
    .param p3, "shouldTint"    # Z

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mIcon:Landroid/graphics/drawable/Icon;

    .line 56
    iput-object p2, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mContentDescription:Ljava/lang/CharSequence;

    .line 57
    iput-boolean p3, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mShouldTint:Z

    .line 58
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ZLandroid/app/smartspace/uitemplatedata/Icon-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/smartspace/uitemplatedata/Icon;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mIcon:Landroid/graphics/drawable/Icon;

    .line 48
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mContentDescription:Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mShouldTint:Z

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 96
    :cond_4
    instance-of v1, p1, Landroid/app/smartspace/uitemplatedata/Icon;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 97
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/smartspace/uitemplatedata/Icon;

    .line 98
    .local v1, "that":Landroid/app/smartspace/uitemplatedata/Icon;
    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/Icon;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/Icon;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-boolean v3, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mShouldTint:Z

    iget-boolean v4, v1, Landroid/app/smartspace/uitemplatedata/Icon;->mShouldTint:Z

    if-ne v3, v4, :cond_30

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    return v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 105
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mContentDescription:Ljava/lang/CharSequence;

    iget-boolean v2, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mShouldTint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist shouldTint()Z
    .registers 2

    .line 77
    iget-boolean v0, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mShouldTint:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartspaceIcon{mIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldTint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mShouldTint:Z

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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 115
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 116
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 117
    iget-boolean v0, p0, Landroid/app/smartspace/uitemplatedata/Icon;->mShouldTint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 118
    return-void
.end method
