.class public Landroid/content/ContentProviderResult;
.super Ljava/lang/Object;
.source "ContentProviderResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/ContentProviderResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final count:Ljava/lang/Integer;

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 75
    new-instance v0, Landroid/content/ContentProviderResult$1;

    #@2
    invoke-direct {v0}, Landroid/content/ContentProviderResult$1;-><init>()V

    #@5
    .line 74
    sput-object v0, Landroid/content/ContentProviderResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "count"    # I

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    #@9
    .line 40
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    #@c
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderResult;I)V
    .locals 1
    .param p1, "cpr"    # Landroid/content/ContentProviderResult;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 56
    iget-object v0, p1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    #@5
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    #@b
    .line 57
    iget-object v0, p1, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    #@d
    iput-object v0, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    #@f
    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 33
    if-nez p1, :cond_0

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "uri must not be null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 34
    :cond_0
    iput-object p1, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    #@11
    .line 35
    iput-object v0, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    #@13
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    .line 45
    .local v0, "type":I
    const/4 v1, 0x1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    #@15
    .line 47
    iput-object v2, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    #@17
    .line 43
    :goto_0
    return-void

    #@18
    .line 49
    :cond_0
    iput-object v2, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    #@1a
    .line 50
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid/net/Uri;

    #@22
    iput-object v1, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    #@24
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 71
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "ContentProviderResult(uri="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    #@12
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v1, ")"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0

    #@26
    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v1, "ContentProviderResult(count="

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    iget-object v1, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    const-string/jumbo v1, ")"

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 62
    const/4 v0, 0x1

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 63
    iget-object v0, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    #@a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 60
    :goto_0
    return-void

    #@12
    .line 65
    :cond_0
    const/4 v0, 0x2

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 66
    iget-object v0, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1c
    goto :goto_0
.end method
