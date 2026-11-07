.class Lcom/android/internal/pm/pkg/component/ParsedServiceImpl$1;
.super Ljava/lang/Object;
.source "ParsedServiceImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 91
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;-><init>(Landroid/os/Parcel;)V

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

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;
    .registers 3
    .param p1, "size"    # I

    .line 96
    new-array v0, p1, [Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;

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

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedServiceImpl$1;->newArray(I)[Lcom/android/internal/pm/pkg/component/ParsedServiceImpl;

    move-result-object p1

    return-object p1
.end method
