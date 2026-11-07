.class Landroid/service/controls/templates/ControlTemplateWrapper$1;
.super Ljava/lang/Object;
.source "ControlTemplateWrapper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/templates/ControlTemplateWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/controls/templates/ControlTemplateWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/controls/templates/ControlTemplateWrapper;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 57
    new-instance v0, Landroid/service/controls/templates/ControlTemplateWrapper;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/service/controls/templates/ControlTemplate;->createTemplateFromBundle(Landroid/os/Bundle;)Landroid/service/controls/templates/ControlTemplate;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/controls/templates/ControlTemplateWrapper;-><init>(Landroid/service/controls/templates/ControlTemplate;)V

    .line 57
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

    .line 54
    invoke-virtual {p0, p1}, Landroid/service/controls/templates/ControlTemplateWrapper$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/controls/templates/ControlTemplateWrapper;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/controls/templates/ControlTemplateWrapper;
    .registers 3
    .param p1, "size"    # I

    .line 63
    new-array v0, p1, [Landroid/service/controls/templates/ControlTemplateWrapper;

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

    .line 54
    invoke-virtual {p0, p1}, Landroid/service/controls/templates/ControlTemplateWrapper$1;->newArray(I)[Landroid/service/controls/templates/ControlTemplateWrapper;

    move-result-object p1

    return-object p1
.end method
