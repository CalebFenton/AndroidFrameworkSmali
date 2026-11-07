.class public final Landroid/app/ActivityOptions$LaunchCookie;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchCookie"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityOptions$LaunchCookie;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist binder:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2173
    new-instance v0, Landroid/app/ActivityOptions$LaunchCookie$1;

    invoke-direct {v0}, Landroid/app/ActivityOptions$LaunchCookie$1;-><init>()V

    sput-object v0, Landroid/app/ActivityOptions$LaunchCookie;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 2122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2123
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 2124
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 2131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2132
    iput-object p1, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 2133
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 2127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0, p1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 2129
    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityOptions$LaunchCookie;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 2153
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2154
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_8

    .line 2155
    const/4 v1, 0x0

    return-object v1

    .line 2157
    :cond_8
    new-instance v1, Landroid/app/ActivityOptions$LaunchCookie;

    invoke-direct {v1, v0}, Landroid/app/ActivityOptions$LaunchCookie;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist writeToParcel(Landroid/app/ActivityOptions$LaunchCookie;Landroid/os/Parcel;)V
    .registers 3
    .param p0, "launchCookie"    # Landroid/app/ActivityOptions$LaunchCookie;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2162
    if-eqz p0, :cond_7

    .line 2163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityOptions$LaunchCookie;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 2165
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2167
    :goto_b
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2140
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2189
    instance-of v0, p1, Landroid/app/ActivityOptions$LaunchCookie;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2190
    move-object v0, p1

    check-cast v0, Landroid/app/ActivityOptions$LaunchCookie;

    .line 2191
    .local v0, "other":Landroid/app/ActivityOptions$LaunchCookie;
    iget-object v2, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 2193
    .end local v0    # "other":Landroid/app/ActivityOptions$LaunchCookie;
    :cond_10
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2198
    iget-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2148
    iget-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2149
    return-void
.end method
