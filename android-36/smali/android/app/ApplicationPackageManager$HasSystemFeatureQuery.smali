.class final Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;
.super Ljava/lang/Record;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HasSystemFeatureQuery"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "name",
        "version"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        I
    }
.end annotation


# instance fields
.field private final blacklist name:Ljava/lang/String;

.field private final blacklist version:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;

    if-eqz v0, :cond_18

    check-cast p1, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;

    iget v0, p0, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->version:I

    iget v1, p1, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->version:I

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->name:Ljava/lang/String;

    iget v1, p0, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetname(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetversion(Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;)I
    .registers 1

    iget p0, p0, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->version:I

    return p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "version"
        }
    .end annotation

    .line 805
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->name:Ljava/lang/String;

    iput p2, p0, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->version:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/app/ApplicationPackageManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 805
    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 805
    iget v0, p0, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->version:I

    iget-object v1, p0, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord1;->m(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist name()Ljava/lang/String;
    .registers 2

    .line 805
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 805
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;

    const-string/jumbo v2, "name;version"

    invoke-static {v0, v1, v2}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist version()I
    .registers 2

    .line 805
    iget v0, p0, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;->version:I

    return v0
.end method
