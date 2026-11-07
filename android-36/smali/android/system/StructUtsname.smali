.class public final Landroid/system/StructUtsname;
.super Ljava/lang/Object;
.source "StructUtsname.java"


# instance fields
.field public final whitelist test-api machine:Ljava/lang/String;

.field public final whitelist test-api nodename:Ljava/lang/String;

.field public final whitelist test-api release:Ljava/lang/String;

.field public final whitelist test-api sysname:Ljava/lang/String;

.field public final whitelist test-api version:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "sysname"    # Ljava/lang/String;
    .param p2, "nodename"    # Ljava/lang/String;
    .param p3, "release"    # Ljava/lang/String;
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "machine"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Landroid/system/StructUtsname;->nodename:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Landroid/system/StructUtsname;->release:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Landroid/system/StructUtsname;->version:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Landroid/system/StructUtsname;->machine:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 53
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
