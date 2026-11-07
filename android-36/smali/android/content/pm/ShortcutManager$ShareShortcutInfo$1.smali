.class Landroid/content/pm/ShortcutManager$ShareShortcutInfo$1;
.super Ljava/lang/Object;
.source "ShortcutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ShortcutManager$ShareShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ShortcutManager$ShareShortcutInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 737
    new-instance v0, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/ShortcutManager-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 735
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/ShortcutManager$ShareShortcutInfo;
    .registers 3
    .param p1, "size"    # I

    .line 741
    new-array v0, p1, [Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 735
    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo$1;->newArray(I)[Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    move-result-object p1

    return-object p1
.end method
