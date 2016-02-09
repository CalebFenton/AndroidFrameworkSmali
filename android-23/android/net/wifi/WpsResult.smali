.class public Landroid/net/wifi/WpsResult;
.super Ljava/lang/Object;
.source "WpsResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WpsResult$Status;,
        Landroid/net/wifi/WpsResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WpsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public pin:Ljava/lang/String;

.field public status:Landroid/net/wifi/WpsResult$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 78
    new-instance v0, Landroid/net/wifi/WpsResult$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WpsResult$1;-><init>()V

    #@5
    .line 77
    sput-object v0, Landroid/net/wifi/WpsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    sget-object v0, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    #@5
    iput-object v0, p0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@7
    .line 40
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    #@a
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WpsResult$Status;)V
    .locals 1
    .param p1, "s"    # Landroid/net/wifi/WpsResult$Status;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@5
    .line 45
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    #@8
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WpsResult;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/WpsResult;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    if-eqz p1, :cond_0

    #@5
    .line 65
    iget-object v0, p1, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@7
    iput-object v0, p0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@9
    .line 66
    iget-object v0, p1, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    #@b
    iput-object v0, p0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    #@d
    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 59
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 50
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, " status: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@e
    invoke-virtual {v2}, Landroid/net/wifi/WpsResult$Status;->toString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 51
    const/16 v1, 0xa

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1a
    .line 52
    const-string/jumbo v1, " pin: "

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    move-result-object v1

    #@21
    iget-object v2, p0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    .line 53
    const-string/jumbo v1, "\n"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    #@2
    invoke-virtual {v0}, Landroid/net/wifi/WpsResult$Status;->name()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9
    .line 73
    iget-object v0, p0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 71
    return-void
.end method
