.class public interface abstract Landroid/system/virtualmachine/VirtualMachine$VsockConnectionProvider;
.super Ljava/lang/Object;
.source "VirtualMachine.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VsockConnectionProvider"
.end annotation


# virtual methods
.method public abstract whitelist addConnection()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation
.end method
