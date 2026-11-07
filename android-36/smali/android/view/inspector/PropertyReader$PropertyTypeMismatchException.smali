.class public Landroid/view/inspector/PropertyReader$PropertyTypeMismatchException;
.super Ljava/lang/RuntimeException;
.source "PropertyReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inspector/PropertyReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyTypeMismatchException"
.end annotation


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "expectedPropertyType"    # Ljava/lang/String;
    .param p3, "actualPropertyType"    # Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Landroid/view/inspector/PropertyReader$PropertyTypeMismatchException;->formatMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "expectedPropertyType"    # Ljava/lang/String;
    .param p3, "actualPropertyType"    # Ljava/lang/String;
    .param p4, "propertyName"    # Ljava/lang/String;

    .line 199
    invoke-static {p1, p2, p3, p4}, Landroid/view/inspector/PropertyReader$PropertyTypeMismatchException;->formatMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method private static blacklist formatMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "id"    # I
    .param p1, "expectedPropertyType"    # Ljava/lang/String;
    .param p2, "actualPropertyType"    # Ljava/lang/String;
    .param p3, "propertyName"    # Ljava/lang/String;

    .line 215
    if-nez p3, :cond_12

    .line 216
    nop

    .line 219
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    .line 216
    const-string v1, "Attempted to read property with ID 0x%08X as type %s, but the ID is of type %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :cond_12
    nop

    .line 228
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p3, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    .line 224
    const-string v1, "Attempted to read property \"%s\" with ID 0x%08X as type %s, but the ID is of type %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
