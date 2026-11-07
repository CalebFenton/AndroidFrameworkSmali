.class Landroid/app/AutomaticZenRule$AzrWithId$1;
.super Ljava/lang/Object;
.source "AutomaticZenRule.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AutomaticZenRule$AzrWithId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/AutomaticZenRule$AzrWithId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/AutomaticZenRule$AzrWithId;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 860
    new-instance v0, Landroid/app/AutomaticZenRule$AzrWithId;

    .line 861
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroid/app/AutomaticZenRule;

    .line 862
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    invoke-direct {v0, v1, v2}, Landroid/app/AutomaticZenRule$AzrWithId;-><init>(Ljava/lang/String;Landroid/app/AutomaticZenRule;)V

    .line 860
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

    .line 857
    invoke-virtual {p0, p1}, Landroid/app/AutomaticZenRule$AzrWithId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/AutomaticZenRule$AzrWithId;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/AutomaticZenRule$AzrWithId;
    .registers 3
    .param p1, "size"    # I

    .line 868
    new-array v0, p1, [Landroid/app/AutomaticZenRule$AzrWithId;

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

    .line 857
    invoke-virtual {p0, p1}, Landroid/app/AutomaticZenRule$AzrWithId$1;->newArray(I)[Landroid/app/AutomaticZenRule$AzrWithId;

    move-result-object p1

    return-object p1
.end method
