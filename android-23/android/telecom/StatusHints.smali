.class public final Landroid/telecom/StatusHints;
.super Ljava/lang/Object;
.source "StatusHints.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/StatusHints$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/StatusHints;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mLabel:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 123
    new-instance v0, Landroid/telecom/StatusHints$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/StatusHints$1;-><init>()V

    #@5
    .line 122
    sput-object v0, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "packageName"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "iconResId"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 45
    if-nez p3, :cond_0

    #@2
    const/4 v0, 0x0

    #@3
    :goto_0
    invoke-direct {p0, p2, v0, p4}, Landroid/telecom/StatusHints;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/os/Bundle;)V

    #@6
    .line 44
    return-void

    #@7
    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    #@9
    .line 135
    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@17
    iput-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    #@19
    .line 136
    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/os/Bundle;

    #@27
    iput-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    #@29
    .line 133
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/StatusHints;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/StatusHints;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    #@5
    .line 51
    iput-object p2, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    #@7
    .line 52
    iput-object p3, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    #@9
    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 141
    if-eqz p1, :cond_1

    #@3
    instance-of v2, p1, Landroid/telecom/StatusHints;

    #@5
    if-eqz v2, :cond_1

    #@7
    move-object v0, p1

    #@8
    .line 142
    check-cast v0, Landroid/telecom/StatusHints;

    #@a
    .line 143
    .local v0, "otherHints":Landroid/telecom/StatusHints;
    invoke-virtual {v0}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    #@11
    move-result-object v3

    #@12
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 144
    invoke-virtual {v0}, Landroid/telecom/StatusHints;->getIcon()Landroid/graphics/drawable/Icon;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getIcon()Landroid/graphics/drawable/Icon;

    #@1f
    move-result-object v3

    #@20
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    .line 143
    if-eqz v2, :cond_0

    #@26
    .line 145
    invoke-virtual {v0}, Landroid/telecom/StatusHints;->getExtras()Landroid/os/Bundle;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getExtras()Landroid/os/Bundle;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    .line 143
    :cond_0
    return v1

    #@33
    .line 147
    .end local v0    # "otherHints":Landroid/telecom/StatusHints;
    :cond_1
    return v1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method public getIconResId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getPackageName()Landroid/content/ComponentName;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 63
    new-instance v0, Landroid/content/ComponentName;

    #@2
    const-string/jumbo v1, ""

    #@5
    const-string/jumbo v2, ""

    #@8
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    #@2
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    #@8
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    iget-object v1, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    #@f
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@12
    move-result v1

    #@13
    add-int/2addr v0, v1

    #@14
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 117
    iget-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@6
    .line 118
    iget-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@b
    .line 119
    iget-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@10
    .line 116
    return-void
.end method
