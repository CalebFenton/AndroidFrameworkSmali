.class public Landroid/view/inspector/PropertyMapper$PropertyConflictException;
.super Ljava/lang/RuntimeException;
.source "PropertyMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inspector/PropertyMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyConflictException"
.end annotation


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newPropertyType"    # Ljava/lang/String;
    .param p3, "existingPropertyType"    # Ljava/lang/String;

    .line 199
    const-string v0, "Attempted to map property \"%s\" as type %s, but it is already mapped as %s."

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 205
    return-void
.end method
