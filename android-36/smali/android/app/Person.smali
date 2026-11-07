.class public final Landroid/app/Person;
.super Ljava/lang/Object;
.source "Person.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Person$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIsBot:Z

.field private greylist-max-o mIsImportant:Z

.field private greylist-max-o mKey:Ljava/lang/String;

.field private greylist-max-o mName:Ljava/lang/CharSequence;

.field private greylist-max-o mUri:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIcon(Landroid/app/Person;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsBot(Landroid/app/Person;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/Person;->mIsBot:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsImportant(Landroid/app/Person;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/Person;->mIsImportant:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKey(Landroid/app/Person;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/app/Person;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUri(Landroid/app/Person;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 313
    new-instance v0, Landroid/app/Person$1;

    invoke-direct {v0}, Landroid/app/Person$1;-><init>()V

    sput-object v0, Landroid/app/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/app/Person$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/app/Person$Builder;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Landroid/app/Person$Builder;->-$$Nest$fgetmName(Landroid/app/Person$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    .line 55
    invoke-static {p1}, Landroid/app/Person$Builder;->-$$Nest$fgetmIcon(Landroid/app/Person$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    .line 56
    invoke-static {p1}, Landroid/app/Person$Builder;->-$$Nest$fgetmUri(Landroid/app/Person$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Landroid/app/Person$Builder;->-$$Nest$fgetmKey(Landroid/app/Person$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Landroid/app/Person$Builder;->-$$Nest$fgetmIsBot(Landroid/app/Person$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person;->mIsBot:Z

    .line 59
    invoke-static {p1}, Landroid/app/Person$Builder;->-$$Nest$fgetmIsImportant(Landroid/app/Person$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person;->mIsImportant:Z

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Person$Builder;Landroid/app/Person-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Person;-><init>(Landroid/app/Person$Builder;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 45
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    .line 47
    :cond_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person;->mIsImportant:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person;->mIsBot:Z

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/Person-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Person;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 143
    instance-of v0, p1, Landroid/app/Person;

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 144
    move-object v0, p1

    check-cast v0, Landroid/app/Person;

    .line 145
    .local v0, "other":Landroid/app/Person;
    iget-object v2, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_1b

    iget-object v2, v0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    if-nez v2, :cond_4b

    goto :goto_29

    :cond_1b
    iget-object v2, v0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, v0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    .line 147
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v2

    if-eqz v2, :cond_4b

    :goto_29
    iget-object v2, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/Person;->mUri:Ljava/lang/String;

    .line 148
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/Person;->mKey:Ljava/lang/String;

    .line 149
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-boolean v2, p0, Landroid/app/Person;->mIsBot:Z

    iget-boolean v3, v0, Landroid/app/Person;->mIsBot:Z

    if-ne v2, v3, :cond_4b

    iget-boolean v2, p0, Landroid/app/Person;->mIsImportant:Z

    iget-boolean v3, v0, Landroid/app/Person;->mIsImportant:Z

    if-ne v2, v3, :cond_4b

    const/4 v1, 0x1

    goto :goto_4c

    :cond_4b
    nop

    .line 145
    :goto_4c
    return v1

    .line 153
    .end local v0    # "other":Landroid/app/Person;
    :cond_4d
    return v1
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getIconUri()Landroid/net/Uri;
    .registers 3

    .line 134
    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    .line 135
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1d

    .line 136
    :cond_16
    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 138
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getUri()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 158
    iget-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/app/Person;->mIsBot:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Landroid/app/Person;->mIsImportant:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isBot()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Landroid/app/Person;->mIsBot:Z

    return v0
.end method

.method public whitelist isImportant()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Landroid/app/Person;->mIsImportant:Z

    return v0
.end method

.method public greylist-max-o resolveToLegacyUri()Ljava/lang/String;
    .registers 3

    .line 118
    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 119
    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    return-object v0

    .line 121
    :cond_7
    iget-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_22

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :cond_22
    const-string v0, ""

    return-object v0
.end method

.method public whitelist toBuilder()Landroid/app/Person$Builder;
    .registers 3

    .line 64
    new-instance v0, Landroid/app/Person$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/Person$Builder;-><init>(Landroid/app/Person;Landroid/app/Person-IA;)V

    return-object v0
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Landroid/app/Person;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 193
    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 195
    :cond_1c
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 168
    iget-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 173
    :cond_14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    :goto_17
    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-boolean v0, p0, Landroid/app/Person;->mIsImportant:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 178
    iget-boolean v0, p0, Landroid/app/Person;->mIsBot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    return-void
.end method
