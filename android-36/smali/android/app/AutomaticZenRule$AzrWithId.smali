.class public final Landroid/app/AutomaticZenRule$AzrWithId;
.super Ljava/lang/Object;
.source "AutomaticZenRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AutomaticZenRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AzrWithId"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AutomaticZenRule$AzrWithId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mId:Ljava/lang/String;

.field public final blacklist mRule:Landroid/app/AutomaticZenRule;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 857
    new-instance v0, Landroid/app/AutomaticZenRule$AzrWithId$1;

    invoke-direct {v0}, Landroid/app/AutomaticZenRule$AzrWithId$1;-><init>()V

    sput-object v0, Landroid/app/AutomaticZenRule$AzrWithId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/app/AutomaticZenRule;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rule"    # Landroid/app/AutomaticZenRule;

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    iput-object p1, p0, Landroid/app/AutomaticZenRule$AzrWithId;->mId:Ljava/lang/String;

    .line 854
    iput-object p2, p0, Landroid/app/AutomaticZenRule$AzrWithId;->mRule:Landroid/app/AutomaticZenRule;

    .line 855
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 880
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 874
    iget-object v0, p0, Landroid/app/AutomaticZenRule$AzrWithId;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Landroid/app/AutomaticZenRule$AzrWithId;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 876
    return-void
.end method
