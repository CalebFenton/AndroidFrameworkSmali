.class Landroid/app/timedetector/ManualTimeSuggestion$1;
.super Ljava/lang/Object;
.source "ManualTimeSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timedetector/ManualTimeSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/timedetector/ManualTimeSuggestion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/ManualTimeSuggestion;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    const-class v0, Landroid/app/timedetector/ManualTimeSuggestion;

    invoke-static {v0, p1}, Landroid/app/timedetector/TimeSuggestionHelper;->handleCreateFromParcel(Ljava/lang/Class;Landroid/os/Parcel;)Landroid/app/timedetector/TimeSuggestionHelper;

    move-result-object v0

    .line 44
    .local v0, "helper":Landroid/app/timedetector/TimeSuggestionHelper;
    new-instance v1, Landroid/app/timedetector/ManualTimeSuggestion;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/app/timedetector/ManualTimeSuggestion;-><init>(Landroid/app/timedetector/TimeSuggestionHelper;Landroid/app/timedetector/ManualTimeSuggestion-IA;)V

    return-object v1
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

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/timedetector/ManualTimeSuggestion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/ManualTimeSuggestion;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/timedetector/ManualTimeSuggestion;
    .registers 3
    .param p1, "size"    # I

    .line 48
    new-array v0, p1, [Landroid/app/timedetector/ManualTimeSuggestion;

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

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/timedetector/ManualTimeSuggestion$1;->newArray(I)[Landroid/app/timedetector/ManualTimeSuggestion;

    move-result-object p1

    return-object p1
.end method
