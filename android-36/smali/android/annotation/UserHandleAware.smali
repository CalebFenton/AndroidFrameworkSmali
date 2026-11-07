.class public interface abstract annotation Landroid/annotation/UserHandleAware;
.super Ljava/lang/Object;
.source "UserHandleAware.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/annotation/UserHandleAware;
        enabledSinceTargetSdkVersion = 0x0
        requiresAnyOfPermissionsIfNotCaller = {}
        requiresAnyOfPermissionsIfNotCallerProfileGroup = {}
        requiresPermissionIfNotCaller = ""
        specialUsersAllowed = {
            .enum Landroid/annotation/SpecialUsers$SpecialUser;->DISALLOW_EVERY:Landroid/annotation/SpecialUsers$SpecialUser;
        }
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist enabledSinceTargetSdkVersion()I
.end method

.method public abstract blacklist requiresAnyOfPermissionsIfNotCaller()[Ljava/lang/String;
.end method

.method public abstract blacklist requiresAnyOfPermissionsIfNotCallerProfileGroup()[Ljava/lang/String;
.end method

.method public abstract blacklist requiresPermissionIfNotCaller()Ljava/lang/String;
.end method

.method public abstract blacklist specialUsersAllowed()[Landroid/annotation/SpecialUsers$SpecialUser;
.end method
