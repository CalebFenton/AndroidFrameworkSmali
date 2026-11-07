.class final Landroid/app/NotificationManager$NotificationKey;
.super Ljava/lang/Record;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "user",
        "pkg",
        "tag",
        "id"
    }
    componentSignatures = {
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Landroid/os/UserHandle;,
        Ljava/lang/String;,
        Ljava/lang/String;,
        I
    }
.end annotation


# instance fields
.field private final blacklist id:I

.field private final blacklist pkg:Ljava/lang/String;

.field private final blacklist tag:Ljava/lang/String;

.field private final blacklist user:Landroid/os/UserHandle;


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/app/NotificationManager$NotificationKey;

    if-eqz v0, :cond_2c

    check-cast p1, Landroid/app/NotificationManager$NotificationKey;

    iget v0, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    iget v1, p1, Landroid/app/NotificationManager$NotificationKey;->id:I

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    iget-object v1, p1, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    iget-object v1, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    iget v3, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpkg(Landroid/app/NotificationManager$NotificationKey;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetuser(Landroid/app/NotificationManager$NotificationKey;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "user",
            "pkg",
            "tag",
            "id"
        }
    .end annotation

    .line 845
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    iput-object p2, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    iput p4, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/NotificationManager$NotificationKey;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 845
    invoke-direct {p0, p1}, Landroid/app/NotificationManager$NotificationKey;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 5

    .line 845
    iget v0, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    iget-object v1, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/app/NotificationManager$NotificationKey$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist id()I
    .registers 2

    .line 845
    iget v0, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    return v0
.end method

.method public blacklist pkg()Ljava/lang/String;
    .registers 2

    .line 845
    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist tag()Ljava/lang/String;
    .registers 2

    .line 845
    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 845
    invoke-direct {p0}, Landroid/app/NotificationManager$NotificationKey;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager$NotificationKey;

    const-string/jumbo v2, "user;pkg;tag;id"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist user()Landroid/os/UserHandle;
    .registers 2

    .line 845
    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    return-object v0
.end method
