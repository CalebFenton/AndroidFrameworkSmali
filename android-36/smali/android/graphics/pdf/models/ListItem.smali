.class public final Landroid/graphics/pdf/models/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/pdf/models/ListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLabel:Ljava/lang/String;

.field private final blacklist mSelected:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Landroid/graphics/pdf/models/ListItem$1;

    invoke-direct {v0}, Landroid/graphics/pdf/models/ListItem$1;-><init>()V

    sput-object v0, Landroid/graphics/pdf/models/ListItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/models/ListItem;->mLabel:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Landroid/graphics/pdf/models/ListItem;->mSelected:Z

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/graphics/pdf/models/ListItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/graphics/pdf/models/ListItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "selected"    # Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "Label cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Landroid/graphics/pdf/models/ListItem;->mLabel:Ljava/lang/String;

    .line 58
    iput-boolean p2, p0, Landroid/graphics/pdf/models/ListItem;->mSelected:Z

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 84
    instance-of v0, p1, Landroid/graphics/pdf/models/ListItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Landroid/graphics/pdf/models/ListItem;

    .line 85
    .local v0, "other":Landroid/graphics/pdf/models/ListItem;
    iget-object v2, p0, Landroid/graphics/pdf/models/ListItem;->mLabel:Ljava/lang/String;

    iget-object v3, v0, Landroid/graphics/pdf/models/ListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-boolean v2, p0, Landroid/graphics/pdf/models/ListItem;->mSelected:Z

    iget-boolean v3, v0, Landroid/graphics/pdf/models/ListItem;->mSelected:Z

    if-ne v2, v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 87
    .end local v0    # "other":Landroid/graphics/pdf/models/ListItem;
    :cond_1a
    return v1
.end method

.method public whitelist getLabel()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/graphics/pdf/models/ListItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 79
    iget-object v0, p0, Landroid/graphics/pdf/models/ListItem;->mLabel:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/graphics/pdf/models/ListItem;->mSelected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isSelected()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Landroid/graphics/pdf/models/ListItem;->mSelected:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChoiceOption{\tlabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/pdf/models/ListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tselected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/graphics/pdf/models/ListItem;->mSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

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

    .line 102
    iget-object v0, p0, Landroid/graphics/pdf/models/ListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-boolean v0, p0, Landroid/graphics/pdf/models/ListItem;->mSelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
