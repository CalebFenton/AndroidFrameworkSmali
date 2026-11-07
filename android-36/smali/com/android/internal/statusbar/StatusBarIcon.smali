.class public Lcom/android/internal/statusbar/StatusBarIcon;
.super Ljava/lang/Object;
.source "StatusBarIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/StatusBarIcon$Type;,
        Lcom/android/internal/statusbar/StatusBarIcon$Shape;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o contentDescription:Ljava/lang/CharSequence;

.field public greylist-max-o icon:Landroid/graphics/drawable/Icon;

.field public greylist-max-o iconLevel:I

.field public greylist-max-o number:I

.field public greylist-max-o pkg:Ljava/lang/String;

.field public blacklist preloadedIcon:Landroid/graphics/drawable/Drawable;

.field public blacklist shape:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

.field public blacklist type:Lcom/android/internal/statusbar/StatusBarIcon$Type;

.field public greylist-max-o user:Landroid/os/UserHandle;

.field public greylist-max-o visible:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 172
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon$1;

    invoke-direct {v0}, Lcom/android/internal/statusbar/StatusBarIcon$1;-><init>()V

    sput-object v0, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/StatusBarIcon;->readFromParcel(Landroid/os/Parcel;)V

    .line 139
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;Lcom/android/internal/statusbar/StatusBarIcon$Type;)V
    .registers 17
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "resPackage"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Icon;
    .param p4, "iconLevel"    # I
    .param p5, "number"    # I
    .param p6, "contentDescription"    # Ljava/lang/CharSequence;
    .param p7, "type"    # Lcom/android/internal/statusbar/StatusBarIcon$Type;

    .line 102
    sget-object v8, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->WRAP_CONTENT:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;Lcom/android/internal/statusbar/StatusBarIcon$Type;Lcom/android/internal/statusbar/StatusBarIcon$Shape;)V

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;Lcom/android/internal/statusbar/StatusBarIcon$Type;Lcom/android/internal/statusbar/StatusBarIcon$Shape;)V
    .registers 11
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "resPackage"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Icon;
    .param p4, "iconLevel"    # I
    .param p5, "number"    # I
    .param p6, "contentDescription"    # Ljava/lang/CharSequence;
    .param p7, "type"    # Lcom/android/internal/statusbar/StatusBarIcon$Type;
    .param p8, "shape"    # Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 83
    invoke-virtual {p3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 84
    invoke-virtual {p3}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 88
    invoke-virtual {p3}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    invoke-static {p2, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p3

    .line 90
    :cond_1f
    iput-object p2, p0, Lcom/android/internal/statusbar/StatusBarIcon;->pkg:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    .line 92
    iput-object p3, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 93
    iput p4, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    .line 94
    iput p5, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    .line 95
    iput-object p6, p0, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 96
    iput-object p7, p0, Lcom/android/internal/statusbar/StatusBarIcon;->type:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    .line 97
    iput-object p8, p0, Lcom/android/internal/statusbar/StatusBarIcon;->shape:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    .line 98
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;Lcom/android/internal/statusbar/StatusBarIcon$Type;)V
    .registers 16
    .param p1, "iconPackage"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "number"    # I
    .param p6, "contentDescription"    # Ljava/lang/CharSequence;
    .param p7, "type"    # Lcom/android/internal/statusbar/StatusBarIcon$Type;

    .line 109
    invoke-static {p1, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .end local p1    # "iconPackage":Ljava/lang/String;
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p4    # "iconLevel":I
    .end local p5    # "number":I
    .end local p6    # "contentDescription":Ljava/lang/CharSequence;
    .end local p7    # "type":Lcom/android/internal/statusbar/StatusBarIcon$Type;
    .local v1, "user":Landroid/os/UserHandle;
    .local v2, "iconPackage":Ljava/lang/String;
    .local v4, "iconLevel":I
    .local v5, "number":I
    .local v6, "contentDescription":Ljava/lang/CharSequence;
    .local v7, "type":Lcom/android/internal/statusbar/StatusBarIcon$Type;
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;Lcom/android/internal/statusbar/StatusBarIcon$Type;)V

    .line 111
    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/android/internal/statusbar/StatusBarIcon;
    .registers 10

    .line 127
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIcon;->pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget v4, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    iget v5, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iget-object v6, p0, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/internal/statusbar/StatusBarIcon;->type:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    iget-object v8, p0, Lcom/android/internal/statusbar/StatusBarIcon;->shape:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;Lcom/android/internal/statusbar/StatusBarIcon$Type;Lcom/android/internal/statusbar/StatusBarIcon$Shape;)V

    .line 129
    .local v0, "that":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-boolean v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iput-boolean v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 130
    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->preloadedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->preloadedIcon:Landroid/graphics/drawable/Drawable;

    .line 131
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 142
    const-class v0, Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->pkg:Ljava/lang/String;

    .line 144
    const-class v0, Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    iput-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/StatusBarIcon$Type;->valueOf(Ljava/lang/String;)Lcom/android/internal/statusbar/StatusBarIcon$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->type:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->valueOf(Ljava/lang/String;)Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->shape:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    .line 151
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarIcon(icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    iget v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    const-string v2, ""

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    move-object v1, v2

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    iget-boolean v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eqz v1, :cond_39

    const-string v1, " visible"

    goto :goto_3a

    :cond_39
    move-object v1, v2

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    .line 119
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    iget v1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    if-eqz v1, :cond_67

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 154
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 157
    iget v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->iconLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-boolean v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->type:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    invoke-virtual {v0}, Lcom/android/internal/statusbar/StatusBarIcon$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIcon;->shape:Lcom/android/internal/statusbar/StatusBarIcon$Shape;

    invoke-virtual {v0}, Lcom/android/internal/statusbar/StatusBarIcon$Shape;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    return-void
.end method
